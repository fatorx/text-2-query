import os
import google.generativeai as genai

SYS_INFO = """
    Se a frase ou pergunta informada pelo usuário for em português, traduza para o Inglês. 
    Se o texto informado não for uma sequência lógica, retorne dois hífens (--) 
    """


class Translate:

    def __init__(self, api_key=None):
        self.api_key = api_key or os.environ.get("GEMINI_API_KEY")
        genai.configure(api_key=self.api_key)

        self.generation_config = {
            "temperature": 1,
            "top_p": 0.95,
            "top_k": 64,
            "max_output_tokens": 8192,
            "response_mime_type": "text/plain",
        }

        self.model = genai.GenerativeModel(
            model_name="gemini-1.5-flash",
            generation_config=self.generation_config,
            system_instruction=SYS_INFO,
        )

        self.chat_session = self.model.start_chat()

    def translate_pt_to_en(self, text) -> str:
        response = self.chat_session.send_message(text)
        return response.text
