FROM python:latest

WORKDIR /app

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get autoremove -y gcc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m myuser
USER myuser

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]