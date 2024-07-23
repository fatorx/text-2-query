import pytest
from pydantic import ValidationError
from app.schemas.response_model import \
    ModelResponseSerializer


def test_valid_input():
    """Test that valid input data is processed correctly."""
    input_data = {"input": "test input", "output": "test output", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}
    serializer = ModelResponseSerializer(**input_data)
    assert serializer.input == "test input"
    assert serializer.output == "test output"


def test_missing_input_field():
    """Test that missing 'input' field raises a ValidationError."""
    input_data = {"output": "test output", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}
    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "missing"
    assert errors[0]["msg"].endswith("Field required")


def test_missing_output_field():
    """Test that missing 'output' field raises a ValidationError."""
    input_data = {"input": "test input", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}
    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "missing"
    assert errors[0]["msg"].endswith("Field required")


def test_empty_input_field():
    """Test that empty 'input' field is accepted."""
    input_data = {"input": "", "output": "test output", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}

    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "value_error"
    assert errors[0]["msg"].endswith("Input text cannot be empty")


def test_empty_output_field():
    """Test that empty 'output' field is accepted."""
    input_data = {"input": "test input", "output": "", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}

    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "value_error"
    assert errors[0]["msg"].endswith("Input text cannot be empty")

def test_incorrect_input_type():
    """Test that incorrect data type for 'input' field raises a ValidationError."""
    # 'input' should be a string
    input_data = {"input": 123, "output": "test output", "uuid": "45deab30-d092-4a74-af92-e835329468c0"}
    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "string_type"
    assert errors[0]["msg"].endswith("Input should be a valid string")

def test_incorrect_output_type():
    """Test that incorrect data type for 'output' field raises a ValidationError."""
    # 'output' should be a string
    input_data = {"input": "test input", "output": 456, "uuid": "45deab30-d092-4a74-af92-e835329468c0"}
    with pytest.raises(ValidationError) as exc_info:
        ModelResponseSerializer(**input_data)

    errors = exc_info.value.errors()

    assert len(errors) == 1
    assert errors[0]["type"] == "string_type"
    assert errors[0]["msg"].endswith("Input should be a valid string")

