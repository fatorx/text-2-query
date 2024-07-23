import pytest
import subprocess
from unittest.mock import patch, Mock
from fastapi import HTTPException

from app.vendors.vanna_ai import VannaAI
from app.messages.messages import Messages


@pytest.fixture
def vanna_ai():
    """Fixture to provide a VannaAI instance with mocked dependencies."""
    mock_translator = Mock()
    mock_translator.translate_pt_to_en.return_value = "translated_text"
    mock_grammar = Mock()
    mock_grammar.check_syntax.return_value = True
    return VannaAI(mock_translator, mock_grammar)


async def test_valid_input(vanna_ai):
    """Test with a valid input, successful script execution, and SQL extraction."""
    with patch("subprocess.run") as mock_run:
        mock_run.return_value = Mock(stdout="Extracted SQL: SELECT * FROM users")
        result = await vanna_ai.process_input("input_text")
        assert result == "SELECT * FROM users"
        mock_run.assert_called_once_with(
            ["python", VannaAI.PATH_SCRIPT, "translated_text"],
            capture_output=True,
            text=True,
            check=True
        )


async def test_invalid_grammar(vanna_ai):
    """Test with invalid grammar (check_syntax returns False)."""
    vanna_ai.message_grammar.check_syntax.return_value = False
    with pytest.raises(HTTPException) as exc_info:
        await vanna_ai.process_input("input_text")
    assert exc_info.value.status_code == 400
    assert exc_info.value.detail == Messages.INVALID_INSTRUCTION


async def test_script_not_found(vanna_ai):
    """Test when the Python script cannot be found."""
    with patch("subprocess.run", side_effect=FileNotFoundError):
        with pytest.raises(HTTPException) as exc_info:
            await vanna_ai.process_input("input_text")
        assert exc_info.value.status_code == 400
        assert exc_info.value.detail == Messages.FAILURE_PROCESS


async def test_subprocess_error(vanna_ai):
    """Test when subprocess.run raises a CalledProcessError."""
    with patch("subprocess.run", side_effect=subprocess.CalledProcessError(1, "command")):
        with pytest.raises(HTTPException) as exc_info:
            await vanna_ai.process_input("input_text")
        assert exc_info.value.status_code == 400
        assert exc_info.value.detail == Messages.FAILURE_PROCESS


async def test_no_sql_extracted(vanna_ai):
    """Test when the script output doesn't contain the SQL query."""
    with patch("subprocess.run") as mock_run:
        mock_run.return_value = Mock(stdout="")
        with pytest.raises(HTTPException) as exc_info:
            await vanna_ai.process_input("input_text")

        assert exc_info.value.status_code == 400
        assert exc_info.value.detail == Messages.INVALID_RESPONSE
