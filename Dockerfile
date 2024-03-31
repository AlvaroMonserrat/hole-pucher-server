# syntax=docker/dockerfile:1
FROM ubuntu:16.04
WORKDIR /app
COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.5 \
    python3-pip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install twisted
CMD ["python3", "./server.py 3000"]
EXPOSE 3000