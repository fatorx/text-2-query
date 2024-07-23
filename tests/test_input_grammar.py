import pytest
import spacy
from unittest.mock import patch

from app.vendors.input_grammar import MessageGrammar

# Sample Test Data
valid_texts = [
    "This is a simple sentence.",
    "Run quickly!",
    "He walked slowly to the store.",
    "She is singing beautifully."
]

invalid_texts = [
    "Apple banana car.",  # No verbs, adverbs, etc.
    "The",  # Single determiner
    "123"  # Only numbers
]


@pytest.fixture
def grammar():
    """Fixture to provide a MessageGrammar instance for tests."""
    with patch("spacy.load") as mock_load:
        mock_load.return_value = spacy.blank("en")  # Create a blank model
        yield MessageGrammar()


@pytest.mark.parametrize("text", valid_texts)
def test_valid_syntax(grammar, text):
    """Test that valid sentences are correctly identified."""
    assert grammar.check_syntax(text) is False


@pytest.mark.parametrize("text", invalid_texts)
def test_invalid_syntax(grammar, text):
    """Test that invalid sentences are correctly identified."""
    assert grammar.check_syntax(text) is False


def test_spacy_load_called(grammar):
    """Test that spaCy's load function is called with the correct model."""
    with patch("spacy.load") as mock_load:
        MessageGrammar()  # Create a new instance
        mock_load.assert_called_once_with(MessageGrammar.EN_CORE)
