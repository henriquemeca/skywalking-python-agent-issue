FROM python:3.12-slim-bullseye

WORKDIR /src

RUN apt-get update && apt-get install -y \
    git \
    gcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ADD . /src

# Install uv
RUN pip install --no-cache-dir uv

# Install dependencies using uv
RUN uv venv \
    &&  uv sync --no-dev --locked

