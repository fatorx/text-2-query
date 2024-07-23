# pull official base image
FROM api_snapshot:latest

# set working directory
WORKDIR /api

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PATH="$POETRY_PATH/bin:$VENV_PATH/bin:$PATH"

COPY pyproject.toml /api
