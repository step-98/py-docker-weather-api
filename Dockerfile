FROM python:3.12.13-alpine3.24
LABEL maintainer="vist98@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /app/

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app/ .

CMD ["python", "main.py"]