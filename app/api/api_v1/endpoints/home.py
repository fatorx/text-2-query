from fastapi import APIRouter

from app.schemas import Response
from app.services.start import Start

router = APIRouter()


@router.get("/", response_model=Response)
async def home() -> Response:
    start = Start("Where?")
    detail = await start.get_message()
    return Response(detail=detail, status_code=200)
