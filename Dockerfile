FROM python:3.11.9-slim

COPY . /opt/app
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

ENV TZ="Europe/Moscow"

WORKDIR /opt/app

RUN pip install -r requirements.txt

CMD ["python", "/opt/app/bot.py"]
