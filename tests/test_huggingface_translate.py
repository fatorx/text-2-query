import pytest
from app.vendors.huggingface_translate import HuggingFaceTranslator


@pytest.fixture
def translator():
    return HuggingFaceTranslator()


def test_translate_pt_to_en(translator):
    text = "Isto é um teste."
    result = translator.translate_pt_to_en(text)

    # This is a basic check to see if some translation is produced
    assert isinstance(result, str)
    assert len(result) > 0

    expected_output = "This is a test."
    assert result == expected_output
