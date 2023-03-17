FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requirements.txt

RUN pip install -r /temp/requirements.txt

RUN adduser --disabled-password service-user

COPY service /service
WORKDIR /service
EXPOSE 8000

USER service-user