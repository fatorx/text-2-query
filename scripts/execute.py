import subprocess

from transformers import AutoTokenizer, AutoModelForSeq2SeqLM

tokenizer = AutoTokenizer.from_pretrained("unicamp-dl/translation-pt-en-t5")
model = AutoModelForSeq2SeqLM.from_pretrained("unicamp-dl/translation-pt-en-t5")


def translate_pt_to_en(text):
    input_text = "translate Portuguese to English: " + text
    input_ids = tokenizer(input_text, return_tensors="pt").input_ids

    outputs = model.generate(
        input_ids,
        max_length=128,
        num_beams=5,
        early_stopping=True
    )

    return tokenizer.decode(outputs[0], skip_special_tokens=True)


def execute_python_script(script_path, arguments=None) -> str:
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
        print(f"Error executing script: {e}")
        print(f"Return code: {e.returncode}")
        print(f"Output: {e.stdout}")
        print(f"Error: {e.stderr}")

    except FileNotFoundError:
        print(f"Script not found at: {script_path}")


def extract_sql_query(response_command: str):
    sql_start_index = response_command.find("LLM Response: ")

    if sql_start_index != -1:
        sql_query_result = response_string[sql_start_index + len("LLM Response: "):].strip()
        if sql_query_result.startswith('`sql') and sql_query_result.endswith('`'):
            sql_query_result = sql_query_result[5:-3]

        return sql_query_result

    return None


# What are the top 10 customers by sales ? (Include the customer's full name)
# What is the most expensive product? USER: Use tables with names in lowercase letters.
question = "What are the top 10 customers by sales ? (Include the customer's full name)"
question_en = translate_pt_to_en(question)

script_path_question = '/api/scripts/vanna_mysql_question.py'
response_string = execute_python_script(script_path_question, arguments=[question])
sql_query = extract_sql_query(response_string)
print(sql_query)
