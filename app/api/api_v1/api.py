from fastapi import APIRouter
from app.api.api_v1.endpoints import home, question

api_router = APIRouter()

api_router.include_router(home.router, prefix="", tags=["home"])
api_router.include_router(question.router, prefix="/question", tags=["question"])
