import pytest
from fastapi.testclient import TestClient
from unittest.mock import AsyncMock, patch
from app.main import app  # Adjust the import according to your project structure
from app.schemas.input_model import InputModel
from app.services.language_model import LanguageModelService
from app.messages.messages import Messages

client = TestClient(app)

@pytest.fixture
def mock_service():
    with patch('app.api.api_v1.endpoints.home.get_language_model_service') as mock:
        service_mock = AsyncMock(spec=LanguageModelService)
        mock.return_value = service_mock
        yield service_mock

def test_get_endpoint():
    response = client.get("/")
    assert response.status_code == 200
    assert response.json() == {"detail": "Get Query"}

@pytest.mark.asyncio
async def test_send_endpoint_success(mock_service):
    mock_service.process_input.return_value = ("SELECT * FROM table", "some-uuid")

    response = client.post(
        "/",
        json={"input_text": "What is the content of the table?"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "input": "What is the content of the table?",
        "output": "SELECT * FROM table",
        "uuid": "some-uuid"
    }

@pytest.mark.asyncio
async def test_send_endpoint_http_exception(mock_service):
    mock_service.process_input.side_effect = HTTPException(status_code=400, detail="Invalid input")

    response = client.post(
        "/",
        json={"input_text": "Invalid question"}
    )

    assert response.status_code == 400
    assert response.json() == {"detail": "Invalid input"}

@pytest.mark.asyncio
async def test_send_endpoint_unexpected_exception(mock_service):
    mock_service.process_input.side_effect = Exception("Unexpected error")

    response = client.post(
        "/",
        json={"input_text": "Unexpected error"}
    )

    assert response.status_code == 500
    assert response.json() == {"detail": Messages.NOT_FINISH_PROCESS}

if __name__ == "__main__":
    pytest.main()
