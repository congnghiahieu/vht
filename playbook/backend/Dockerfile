FROM python:3.10.18-bullseye

RUN apt-get update \
  # dependencies for building Python packages \
  && apt-get install -y build-essential \
  # psycopg2 dependencies
  && apt-get install -y libpq-dev \
  # Translations dependencies
  && apt-get install -y gettext \
  # Nginx
  && apt-get install -y nginx vim procps curl libpq-dev -y --no-install-recommends \
  # Install kubectl
  && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
  && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
  # cleaning up unused files
  && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
  && rm -rf /var/lib/apt/lists/* \
  && rm kubectl

COPY requirements.lock .
RUN pip install --no-cache-dir --no-compile --disable-pip-version-check -r requirements.lock
