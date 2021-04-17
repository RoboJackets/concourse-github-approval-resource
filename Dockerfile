FROM python:3.8-alpine

RUN pip install --no-cache-dir requests

WORKDIR /opt/resource/

COPY src/* .
