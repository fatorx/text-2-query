import sys
import pytest
from unittest.mock import patch, Mock
from vanna.vannadb import VannaDB_VectorStore
from vanna.google import GoogleGeminiChat
from scripts.vanna_mysql_question import VannaConnector


# --- Test Setup ---

@pytest.fixture
def mock_env_vars(monkeypatch):
    monkeypatch.setenv("VANNA_MODEL", "mock_vanna_model")
    monkeypatch.setenv("VANNA_API_KEY", "mock_vanna_api_key")
    monkeypatch.setenv("GEMINI_API_KEY", "mock_gemini_api_key")
    monkeypatch.setenv("GEMINI_MODEL", "mock_gemini_model")

    # Mock MySQL environment variables
    monkeypatch.setenv("MYSQL_HOST", "storage.mysql")
    monkeypatch.setenv("MYSQL_DATABASE", "laborit")
    monkeypatch.setenv("MYSQL_USERNAME", "api")
    monkeypatch.setenv("MYSQL_PASSWORD", "security_pass")
    monkeypatch.setenv("MYSQL_PORT", "3306")


@pytest.fixture
def mock_vanna_connector(mock_env_vars):
    with patch("vanna.vannadb.VannaDB_VectorStore.__init__", return_value=None) as mock_vanna_init, \
            patch("vanna.google.GoogleGeminiChat.__init__", return_value=None) as mock_gemini_init, \
            patch.object(VannaConnector, "connect_to_mysql") as mock_connect_to_mysql:
        yield VannaConnector(), mock_connect_to_mysql


# --- Test Cases ---

def test_init_and_env_vars(mock_vanna_connector):  # Update the test function signature
    """Test initialization and environment variable loading."""
    _, mock_connect_to_mysql = mock_vanna_connector  # Unpack the tuple from the fixture
    # ... (Your existing assertions for the Vanna/Gemini environment variables)

    # Assert that connect_to_mysql is called with the mocked environment variables
    mock_connect_to_mysql.assert_called_once_with(
        host="storage.mysql",
        dbname="laborit",
        user="api",
        password="security_pass",
        port=3306
    )


def test_ask_with_question(mock_vanna_connector):
    """Test the 'ask' method when a question is provided."""
    _, mock_connect_to_mysql = mock_vanna_connector

    # Mock the VannaDB_VectorStore
    mock_vanna_db = Mock(spec=VannaDB_VectorStore)

    # Call ask directly, patching to simulate VannaDB_VectorStore behavior
    with patch.object(VannaConnector, "ask", return_value="Answer"):
        mock_vanna_connector.ask("Who is the president of the United States?", print_results=False, auto_train=True)

    # Assert call to connect_to_mysql
    mock_connect_to_mysql.assert_called_once()
