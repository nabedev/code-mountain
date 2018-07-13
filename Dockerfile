FROM python:3.6-alpine

RUN apk add --update --no-cache \
    build-base \
    python-dev \
    zlib-dev \
    libxml2-dev \
    libxslt-dev \
    libffi-dev \
    postgresql-dev

ADD pip_requirements.txt /tmp/pip_requirements.txt
RUN pip install -r /tmp/pip_requirements.txt

ADD . /var/www/app
WORKDIR /var/www/app

EXPOSE 8000

# CMD [ "python", "./app/manage.py", "runserver", "0.0.0.0:8000", "--settings=app.settings.prod" ]
