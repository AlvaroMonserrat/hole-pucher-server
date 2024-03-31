# syntax=docker/dockerfile:1
FROM ubuntu:18.04
WORKDIR /app
COPY . .
RUN apt update
RUN apt install Python3-pip
RUN add-apt-repository ppa:deadsnakes/ppa 
RUN apt install Python3.10 
RUN apt update 
RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
RUN pip install twisted
CMD ["python", "./server.py 3000"]
EXPOSE 3000