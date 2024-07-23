from pydantic import AnyHttpUrl
from pydantic_settings import BaseSettings
from typing import List, Union
from dotenv import load_dotenv
import os

load_dotenv()


class Settings(BaseSettings):
    PROJECT_NAME: str = "API"
    API_V1_STR: str = "/api/v1"
    MODULE_NAME: str
    DEBUG: bool
    BACKEND_CORS_ORIGINS: List[str]
    REDIS_PORT: int
    REDIS_DATABASE: int
    REDIS_HOST: str

    APP_URL: AnyHttpUrl

    MYSQL_HOST: str
    MYSQL_PORT: int
    MYSQL_DATABASE: str
    MYSQL_USERNAME: str
    MYSQL_PASSWORD: str

    VANNA_MODEL: str
    VANNA_API_KEY: str
    GEMINI_API_KEY: str
    GEMINI_MODEL: str

    class ConfigDict:
        case_sensitive = True
        env_file = ".env"
        env_file_encoding = 'utf-8'


settings = Settings()
