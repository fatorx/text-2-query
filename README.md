# GenerativeSQL App

This system aims to generate sql queries based in the context of a question or instruction.

------

## Functionalities

- Receives a text input and checks if the input is valid.
- If the input is in Portuguese, it translates it to English.
- With the input processed, the Vanna AI service is used to generate a SQL query.

------

## Requirements

It's necessary to create an account on the Vanna AI platform and also obtain a key for Google Gemini.

Vanna AI (https://vanna.ai/)

Google Gemini (https://ai.google.dev/aistudio)

In Vanna platform, create a new model, which will be used in the configuration (VANNA_MODEL).

------
## Technologies
- Python 3.11 with FastAPI
- MySQL 8.0.32

------

## Quickstart - Docker and Tests

### First time

Create a build/mysql folder, to hold a volume for the database.
```bash
$ mkdir build
$ mkdir build/mysql
$ chmod -R 777 build/mysql
```

Create a copy of .env.example and fill the variables with the values of your choice (i.e. your database credentials, etc)
```bash
$ cp .env.example .env 
```

Make shell script files executable

```bash
$ chmod +x start.sh
```

Run at project root
```bash
$ ./start.sh
```

Run the tests to verify that the installation completed successfully.
```bash
$ docker exec -it api pytest
```

If there are any failures in the tests, it is necessary to run the script below:
```bash
$ ./commit.sh
```

### Running after build 

```bash
$ docker compose up -d
```

The api will be up at http://0.0.0.0:8003, with access to API methods in OpenAPI format.

### Running tests

```bash
$ docker exec -it api pytest
```