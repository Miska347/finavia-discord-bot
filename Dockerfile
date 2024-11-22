FROM python:3.10-bullseye
COPY requirements.txt /app/
WORKDIR /app

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt
COPY . .
CMD ["python3", "main.py"]