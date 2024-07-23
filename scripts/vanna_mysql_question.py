import sys
import os

from vanna.vannadb import VannaDB_VectorStore
from vanna.google import GoogleGeminiChat


VANNA_MODEL = os.environ.get('VANNA_MODEL')
VANNA_API_KEY = os.environ.get('VANNA_API_KEY')
GEMINI_API_KEY = os.environ.get('GEMINI_API_KEY')
GEMINI_MODEL = os.environ.get('GEMINI_MODEL')

MYSQL_HOST = os.environ.get('MYSQL_HOST')
MYSQL_DATABASE = os.environ.get('MYSQL_DATABASE')
MYSQL_USERNAME = os.environ.get('MYSQL_USERNAME')
MYSQL_PASSWORD = os.environ.get('MYSQL_PASSWORD')
MYSQL_PORT = int(os.environ.get('MYSQL_PORT'))


class VannaConnector(VannaDB_VectorStore, GoogleGeminiChat):
    def __init__(self, config=None):

        VannaDB_VectorStore.__init__(self, vanna_model=VANNA_MODEL, vanna_api_key=VANNA_API_KEY,
                                     config=config)
        GoogleGeminiChat.__init__(self, config={'api_key': GEMINI_API_KEY, 'model': GEMINI_MODEL})

        self.connect_to_mysql(
            host=MYSQL_HOST, dbname=MYSQL_DATABASE,
            user=MYSQL_USERNAME, password=MYSQL_PASSWORD,
            port=MYSQL_PORT
        )


vn = VannaConnector()
args_number = len(sys.argv)

if args_number > 1:
    question = str(sys.argv[1])
    vn.ask(question=question, print_results=False, auto_train=True)
