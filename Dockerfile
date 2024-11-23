FROM python:3.10-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 5100

#CMD [ "python3", "-m" , "flask","run", "--host","0.0.0.0","--port","5000"]
CMD [ "opentelemetry-instrument","flask","run","--host","0.0.0.0","--port","5100"]
