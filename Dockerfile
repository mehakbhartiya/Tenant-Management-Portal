FROM python:alpine3.20 
WORKDIR /app
RUN apk add --no-cache sqlite sqlite-dev 

COPY . .
RUN pip install flask

EXPOSE 5000
CMD ["python", "main.py"]

