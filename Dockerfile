FROM python:3.9.18

RUN apt-get update && apt-get install -y git vim
COPY . workspace

WORKDIR workspace

RUN pip install -r requirements.txt

COPY reverie/backend_server/utils.py reverie/backend_server/utils.py
