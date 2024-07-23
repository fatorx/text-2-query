import subprocess

from fastapi import HTTPException

from app.vendors.huggingface_translate import HuggingFaceTranslator
from app.vendors.input_grammar import MessageGrammar
from app.messages.messages import Messages


class VannaAI:
    PATH_SCRIPT: str = '/api/scripts/vanna_mysql_question.py'

    def __init__(self, translator: HuggingFaceTranslator, message_grammar: MessageGrammar):
        self.translator = translator
        self.message_grammar = message_grammar

    def execute_python_script(self, script_path, arguments=None) -> str:
        command = ["python", script_path]
        if arguments:
            command.extend(arguments)

        try:
            result = subprocess.run(
                command,
                capture_output=True,
                text=True,
                check=True
            )

            output_string = str(result.stdout)
            return output_string

        except subprocess.CalledProcessError as e:
            # add log
            raise HTTPException(status_code=400, detail=Messages.FAILURE_PROCESS)

        except FileNotFoundError:
            print(f"Script not found at: {script_path}")
            # add log
            raise HTTPException(status_code=400, detail=Messages.FAILURE_PROCESS)

    def extract_sql_query(self, response_command: str) -> str:
        not_valid_sql = "Couldn't run sql"
        if response_command.__contains__(not_valid_sql):
            raise HTTPException(status_code=400, detail=Messages.INVALID_RESPONSE)

        separator_string = "LLM Response: "
        if response_command.__contains__("Extracted SQL: "):
            separator_string = "Extracted SQL: "

        sql_start_index = response_command.find(separator_string)

        if sql_start_index != -1:
            sql_query_result = response_command[sql_start_index + len(separator_string):].strip()
            if sql_query_result.startswith('`sql') and sql_query_result.endswith('`'):
                sql_query_result = sql_query_result[5:-3]

            return sql_query_result.replace('\n', ' ')

        return None

    async def process_input(self, input_text: str) -> str:

        question = self.translator.translate_pt_to_en(input_text)
        check_syntax = self.message_grammar.check_syntax(question)
        if check_syntax is False:
            raise HTTPException(status_code=400, detail=Messages.INVALID_INSTRUCTION)

        response_string = self.execute_python_script(self.PATH_SCRIPT, arguments=[question])
        sql_query = self.extract_sql_query(response_string)

        if sql_query is None:
            raise HTTPException(status_code=400, detail=Messages.INVALID_RESPONSE)

        return sql_query
