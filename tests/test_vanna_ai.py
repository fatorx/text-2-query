import pytest
import subprocess
import asyncio
import unittest
from unittest.mock import patch, MagicMock, Mock
from fastapi import HTTPException

from app.vendors.vanna_ai import VannaAI
from app.messages.messages import Messages


# Mock the Translate class
class MockTranslate:
    def translate_pt_to_en(self, text):
        return text  # Return the input as is for testing

# Mock subprocess.run
def mock_subprocess_run(*args, **kwargs):
    # Simulate successful script execution
    completed_process = MagicMock()
    completed_process.stdout = b"LLM Response: Some response\nExtracted SQL: SELECT * FROM products"
    return completed_process

class TestVannaAI(unittest.TestCase):
    def setUp(self):
        self.translator = MockTranslate()
        self.vanna_ai = VannaAI(self.translator)

    @patch('subprocess.run', side_effect=mock_subprocess_run)
    def test_process_input_success(self, mock_run):
        # Create an event loop to run the async function
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        result = loop.run_until_complete(self.vanna_ai.process_input("Qual é o produto mais vendido?"))
        self.assertEqual(result, "SELECT * FROM products")
        loop.close()

    @patch('subprocess.run', side_effect=mock_subprocess_run)
    def test_process_input_invalid_instruction(self, mock_run):
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        with self.assertRaises(HTTPException) as cm:
            loop.run_until_complete(self.vanna_ai.process_input("--"))
        self.assertEqual(cm.exception.detail, Messages.INVALID_INSTRUCTION)
        loop.close()

    @patch('subprocess.run', side_effect=FileNotFoundError)
    def test_process_input_script_not_found(self, mock_run):
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        with self.assertRaises(HTTPException) as cm:
            loop.run_until_complete(self.vanna_ai.process_input("Qualquer pergunta"))
        self.assertEqual(cm.exception.detail, Messages.FAILURE_PROCESS)
        loop.close()

    @patch('subprocess.run')
    def test_process_input_invalid_response(self, mock_run):
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        # Simulate a response without a valid SQL query
        mock_run.return_value.stdout = b"LLM Response: Couldn't run sql"
        with self.assertRaises(HTTPException) as cm:
            loop.run_until_complete(self.vanna_ai.process_input("Qualquer pergunta"))
        self.assertEqual(cm.exception.detail, Messages.INVALID_RESPONSE)
        loop.close()

    @patch('subprocess.run')
    def test_extract_sql_query(self, mock_run):

        test_cases = [
            ("LLM Response: Some response\nExtracted SQL: SELECT * FROM products", "SELECT * FROM products"),
            ("Extracted SQL: SELECT name FROM users", "SELECT name FROM users"),
            ("LLM Response: Couldn't run sql", None),
            ("Invalid response", None)
        ]

        with self.assertRaises(HTTPException) as cm:
            for response, expected_sql in test_cases:
                mock_run.return_value.stdout = response.encode()
                sql_query = self.vanna_ai.extract_sql_query(response)
                self.assertEqual(sql_query, expected_sql)

        self.assertEqual(cm.exception.detail, Messages.INVALID_RESPONSE)
