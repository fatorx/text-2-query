import io
import pytest
from fastapi.testclient import TestClient

from app.main import app

client = TestClient(app)


@pytest.mark.asyncio
async def test_home():
    response = client.get("/api/v1/")
    assert response.status_code == 200