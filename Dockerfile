FROM python:3.6-alpine

RUN apk add --update --no-cache \
    postgresql-dev \
    gcc \
    python3-dev \
    musl-dev

ADD pip_requirements.txt /tmp/pip_requirements.txt
RUN pip install -r /tmp/pip_requirements.txt

ADD . /var/www/app
WORKDIR /var/www/app

EXPOSE 8000

# CMD [ "python", "./app/manage.py", "runserver", "0.0.0.0:8000", "--settings=app.settings.prod" ]
