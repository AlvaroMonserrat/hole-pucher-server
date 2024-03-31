# syntax=docker/dockerfile:1
FROM ubuntu:18.04
WORKDIR /app
COPY . .
RUN apt-get update
RUN apt-get install software-properties-common
RUN apt-get update
RUN add-apt-repository universe
RUN apt-get update
RUN apt-get install python3-pip
RUN add-apt-repository ppa:deadsnakes/ppa 
RUN apt-get install Python3.10 
RUN apt-get update
RUN apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
RUN pip install twisted
CMD ["python", "./server.py 3000"]
EXPOSE 3000