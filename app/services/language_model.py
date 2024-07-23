import uuid

from fastapi import HTTPException
from starlette import status

from transformers import AutoTokenizer, AutoModelForSeq2SeqLM
from app.vendors.vanna_ai import VannaAI

class LanguageModelService:

    def __init__(self, process_model: VannaAI):
        self.process_model = process_model

    async def process_input(self, input_text: str):
        sql_query = await self.process_model.process_input(input_text)
        uuid4 = uuid.uuid4()
        uuid_query = str(uuid4)

        file = f"/api/storage/{uuid_query}.sql";
        with open(file, 'w') as file:
            file.write(sql_query)

        return sql_query, uuid_query

    async def get_storage(self, uuid_query: str):

        file = f"/api/storage/{uuid_query}.sql";
        with open(file, 'w') as file:
            sql_query = file.read()

        return sql_query