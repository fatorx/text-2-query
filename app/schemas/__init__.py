from pydantic import BaseModel
from pydantic.config import ConfigDict


class Response(BaseModel):
    model_config = ConfigDict(
        from_attributes=True
    )
    detail: str | dict
