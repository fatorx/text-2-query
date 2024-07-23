import pytest
from unittest.mock import AsyncMock
from app.services.language_model import LanguageModelService
from app.vendors.vanna_ai import VannaAI


@pytest.fixture
def mock_vanna_ai():
    mock = AsyncMock(spec=VannaAI)
    return mock


@pytest.fixture
def language_model_service(mock_vanna_ai):
    return LanguageModelService(process_model=mock_vanna_ai)


@pytest.mark.asyncio
async def test_process_input_success(language_model_service, mock_vanna_ai):
    input_text = "Translate this to SQL"
    expected_sql_query = "SELECT * FROM table"

    mock_vanna_ai.process_input.return_value = expected_sql_query

    result, uuid = await language_model_service.process_input(input_text)

    assert result == expected_sql_query
    mock_vanna_ai.process_input.assert_awaited_once_with(input_text)


@pytest.mark.asyncio
async def test_process_input_failure(language_model_service, mock_vanna_ai):
    input_text = "Translate this to SQL"

    mock_vanna_ai.process_input.side_effect = Exception("Failed to process input")

    with pytest.raises(Exception) as exc_info:
        await language_model_service.process_input(input_text)

    assert str(exc_info.value) == "Failed to process input"
    mock_vanna_ai.process_input.assert_awaited_once_with(input_text)


if __name__ == "__main__":
    pytest.main()
