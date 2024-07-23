import pytest
from pydantic import ValidationError
from app.schemas.input_model import InputModel


def test_valid_input():
    """Test that a valid input passes validation."""
    input_data = {"input_text": "This is some valid text."}
    model = InputModel(**input_data)
    assert model.input_text == input_data["input_text"]


def test_empty_input():
    """Test that an empty input raises a ValueError."""
    input_data = {"input_text": ""}
    with pytest.raises(ValidationError) as exc_info:
        InputModel(**input_data)

    errors = exc_info.value.errors()
    assert len(errors) == 1
    assert errors[0]["type"] == "value_error"
    assert errors[0]["msg"].endswith("Input text cannot be empty")


def test_whitespace_only_input():
    """Test that whitespace-only input raises a ValueError."""
    input_data = {"input_text": "   \t\n  "}
    with pytest.raises(ValidationError) as exc_info:
        InputModel(**input_data)

    errors = exc_info.value.errors()
    assert len(errors) == 1
    assert errors[0]["type"] == "value_error"
    assert errors[0]["msg"].endswith("Input text cannot be empty")
