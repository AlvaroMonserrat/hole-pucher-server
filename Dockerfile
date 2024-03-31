# syntax=docker/dockerfile:1
FROM ubuntu:18.04
WORKDIR /app
COPY . .
RUN apt-get -y update && apt -get install software-properties-common \
&& add-apt-repository ppa:deadsnakes/ppa && apt install python3.10
RUN pip install twisted
CMD ["python", "./server.py 3000"]
EXPOSE 3000