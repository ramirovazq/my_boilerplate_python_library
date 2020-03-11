FROM python:3.6-stretch

WORKDIR /app

COPY poetry.lock pyproject.toml ./

RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get install -y \
    gettext

RUN pip install poetry

RUN poetry export -f requirements.txt > requirements.txt --dev --without-hashes \
  && pip install --no-cache-dir -r requirements.txt

COPY . .
