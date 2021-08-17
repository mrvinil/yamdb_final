FROM python:3.8.5

WORKDIR /code

COPY . .

RUN pip3 install -r requirements.txt

RUN chmod +x ./start.sh

ENTRYPOINT ./start.sh
