import os
from sqlalchemy import inspect, create_engine, text
from vanna.google import GoogleGeminiChat
from vanna.vannadb import VannaDB_VectorStore

VANNA_MODEL = os.environ.get('VANNA_MODEL')
VANNA_API_KEY = os.environ.get('VANNA_API_KEY')
GEMINI_API_KEY = os.environ.get('GEMINI_API_KEY')
GEMINI_MODEL = os.environ.get('GEMINI_MODEL')

MYSQL_HOST = os.environ.get('MYSQL_HOST')
MYSQL_DATABASE = os.environ.get('MYSQL_DATABASE')
MYSQL_USERNAME = os.environ.get('MYSQL_USERNAME')
MYSQL_PASSWORD = os.environ.get('MYSQL_PASSWORD')
MYSQL_PORT = int(os.environ.get('MYSQL_PORT'))

URI_DATABASE = f"mysql+pymysql://{MYSQL_USERNAME}:{MYSQL_PASSWORD}@{MYSQL_HOST}/{MYSQL_DATABASE}"
engine = create_engine(URI_DATABASE)
inspector = inspect(engine)


def get_table_schemas(engine_base, list_table_names):
    schemas = []

    with engine_base.connect() as connection:
        for table_name in list_table_names:
            sql_text = text(f"SHOW CREATE TABLE {table_name};")
            result_proxy = connection.execute(sql_text)
            result = result_proxy.fetchone()
            schema = result[1]
            schemas.append(schema)
    return schemas


table_names = inspector.get_table_names()
table_schemas = get_table_schemas(engine, table_names)
tables_str = "\n\n".join(table_schemas)


class MyVanna(VannaDB_VectorStore, GoogleGeminiChat):
    def __init__(self, config=None):

        VannaDB_VectorStore.__init__(self, vanna_model=VANNA_MODEL, vanna_api_key=VANNA_API_KEY,
                                     config=config)
        GoogleGeminiChat.__init__(self, config={'api_key': GEMINI_API_KEY, 'model': GEMINI_MODEL})

        self.connect_to_mysql(
            host=MYSQL_HOST, dbname=MYSQL_DATABASE,
            user=MYSQL_USERNAME, password=MYSQL_PASSWORD,
            port=MYSQL_PORT
        )


vn = MyVanna()
vn.connect_to_mysql(host=MYSQL_HOST, dbname=MYSQL_DATABASE, user=MYSQL_USERNAME, password=MYSQL_PASSWORD, port=3306)
vn.train(ddl=tables_str)


with open('/api/scripts/documentation.txt', 'r') as file:
    documentation_data = file.read()
    vn.train(documentation=documentation_data)

with open('/api/scripts/training_queries.sql', 'r') as file:
    sql_queries = file.read()
    vn.train(sql=sql_queries)

training_data = vn.get_training_data()
print(training_data)
