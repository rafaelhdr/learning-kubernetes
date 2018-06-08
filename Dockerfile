FROM python:3.6-alpine

ENV FLASK_APP=/code/app.py

WORKDIR /code
COPY src/app.py src/requirements.txt /code/
RUN pip install -r requirements.txt

CMD flask run --host=0.0.0.0
