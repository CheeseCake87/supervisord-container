FROM cheesecake87/pysupervisor
WORKDIR /flask
RUN apk update && apk upgrade
RUN apk add --no-cache tzdata
ENV TZ=Europe/London
COPY app app
RUN mkdir "/flask/app/db"
COPY gunicorn.conf.py gunicorn.conf.py
COPY requirements.txt requirements.txt
COPY supervisor.apps.ini /pysupervisor/supervisor.apps.ini
RUN python3 -m venv venv
RUN venv/bin/pip install -r requirements.txt
