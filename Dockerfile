FROM python:3.9.18

COPY deployment workspace

WORKDIR workspace

RUN pip install -r requirements.txt

EXPOSE 80

CMD cd /workspace/ && python3 manage.py runserver 0.0.0.0:80
