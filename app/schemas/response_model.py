from pydantic import BaseModel, field_validator


class ModelResponseSerializer(BaseModel):
    input: str
    output: str
    uuid: str


    @field_validator("input")
    @classmethod
    def input_not_empty(cls, value):
        if not value.strip():
            raise ValueError("Input text cannot be empty")
        return value

    @field_validator("output")
    @classmethod
    def output_not_empty(cls, value):
        if not value.strip():
            raise ValueError("Input text cannot be empty")
        return value
