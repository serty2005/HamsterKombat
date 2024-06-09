FROM python:3.11.9-slim

COPY . /opt/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/app

RUN pip install -r requirements.txt

CMD ["python", "/opt/app/bot.py"]