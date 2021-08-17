CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
CMD sudo docker-compose exec web python manage.py makemigrations api
CMD sudo docker-compose exec web python manage.py makemigrations users
CMD sudo docker-compose exec web python manage.py migrate --noinput
CMD sudo docker-compose exec web python manage.py collectstatic --no-input