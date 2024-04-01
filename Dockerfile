# syntax=docker/dockerfile:1
FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN apt-get update
RUN add-apt-repository universe
RUN apt-get update
RUN apt-get install python3-pip -y
RUN add-apt-repository ppa:deadsnakes/ppa 
RUN apt-get update
RUN apt-get install Python3.7 -y
RUN apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y
RUN pip3 install twisted
WORKDIR /app
COPY . .
CMD ["python3", "./server.py"]
EXPOSE 3000