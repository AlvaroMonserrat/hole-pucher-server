# syntax=docker/dockerfile:1
FROM ubuntu:18.04
WORKDIR /app
COPY . .
RUN sudo apt update
RUN sudo add-apt-repository ppa:deadsnakes/ppa 
RUN sudo apt install Python3.10 
RUN sudo apt update 
RUN sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
RUN sudo apt install Python3-pip
RUN pip install twisted
CMD ["python", "./server.py 3000"]
EXPOSE 3000