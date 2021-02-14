FROM python:3-alpine

WORKDIR /opt/server

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app
COPY run.py config.py boot.sh ./
#RUN chmod +x boot.sh

ENTRYPOINT ["sh", "boot.sh"]
