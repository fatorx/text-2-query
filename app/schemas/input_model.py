from pydantic import field_validator, BaseModel, Field


class InputModel(BaseModel):
    input_text: str = Field(..., description="The input text to be processed or analyzed.")

    @field_validator("input_text")
    @classmethod
    def input_text_not_empty(cls, value):
        if not value.strip():
            raise ValueError("Input text cannot be empty")
        return value