from fastapi import APIRouter, HTTPException
from fastapi.params import Depends

from app.messages.messages import Messages
from app.schemas import Response
from app.schemas.input_model import InputModel
from app.schemas.response_model import ModelResponseSerializer
from app.services.factory import ServiceFactory
from app.services.language_model import LanguageModelService

router = APIRouter()
service_factory = ServiceFactory()


async def get_language_model_service():
    return await service_factory.create_language_model()


@router.post("/",
             response_model=ModelResponseSerializer,
             summary="Creates a sql query based on a statement or question.",
             status_code=200,
             tags=["text2sql"])
async def send(input_model: InputModel,
               service: LanguageModelService = Depends(get_language_model_service)):
    """
        Receives a question and processes its contents to form an SQL query, based on an analysis of your requirements.
        \n\n
        input_text: a question based on a MySQL database.\n\n
    """
    try:
        query, uuid = await service.process_input(input_model.input_text)
        return ModelResponseSerializer(
            input=input_model.input_text,
            output=query,
            uuid=uuid
        )
    except HTTPException as exc:
        raise HTTPException(status_code=exc.status_code, detail=exc.detail)
    except Exception as e:
        raise HTTPException(status_code=500, detail=Messages.NOT_FINISH_PROCESS)


@router.get("/", response_model=Response)
async def get() -> Response:
    message = "Get Query"
    return Response(detail=message)
