#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset


echo "Making migrations."
python manage.py makemigrations api
python manage.py makemigrations users
python manage.py migrate --noinput

echo "Collecting static files."
python manage.py collectstatic --noinput


# Запускаем gunicorn
echo "Starting gunicorn"
gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000 \
    --error-logfile ./logs/gunicorn-error.log \
    --access-logfile ./logs/gunicorn-access.log

exec "$@"