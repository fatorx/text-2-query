# pull official base image
FROM python:3.11

# set working directory
WORKDIR /api

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV PATH="$POETRY_PATH/bin:$VENV_PATH/bin:$PATH"

COPY pyproject.toml /api

# install system dependencies
RUN apt-get update \
  && apt-get -y install gcc git curl openssh-server \
  && apt-get clean

RUN mkdir /api/uploads
RUN chmod 777 /api/uploads
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test

RUN  echo 'test:test' | chpasswd

RUN service ssh start
RUN /usr/sbin/sshd

EXPOSE 22

RUN python -m pip install --upgrade pip
RUN pip install trio
RUN pip install python-dotenv
RUN pip install pydevd-pycharm~=232.9559.58

# install python dependencies
RUN pip install --no-cache-dir poetry

RUN poetry config virtualenvs.create false
RUN poetry lock && poetry install

#RUN pip install transformers torch
RUN pip install 'vanna[gemini,mysql]'