FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

ARG PORT_BUILD=5000

ENV PORT=$PORT_BUILD

EXPOSE $PORT_BUILD

COPY . .
CMD [ "python", "app.py" ]