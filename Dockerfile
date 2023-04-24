FROM python:3.11-alpine
WORKDIR /pysupervisor
RUN apk update && apk upgrade
# TIMEZONE
RUN apk add --no-cache tzdata
ENV TZ=Europe/London
# See here for timezones:
# https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List
COPY requirements.txt requirements.txt
COPY supervisord.conf supervisord.conf
RUN python3 -m venv venv
RUN venv/bin/pip install -r requirements.txt
ENTRYPOINT ["/pysupervisor/venv/bin/supervisord", "-c", "/pysupervisor/supervisord.conf"]
