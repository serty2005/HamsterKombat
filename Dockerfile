FROM python:3.11.9-slim

COPY . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt

CMD ["python", "/opt/app/bot.py"]
