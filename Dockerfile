# syntax=docker/dockerfile:1
FROM python:lastest
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt
CMD ["python", "./server.py 3000"]
EXPOSE 3000