FROM python:3.10.18-bookworm

COPY requirements.lock .
RUN pip install --no-cache-dir --no-compile --disable-pip-version-check -r requirements.lock
