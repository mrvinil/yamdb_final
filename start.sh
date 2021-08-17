gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
sudo docker-compose exec web python manage.py makemigrations api
sudo docker-compose exec web python manage.py makemigrations users
sudo docker-compose exec web python manage.py migrate --noinput
sudo docker-compose exec web python manage.py collectstatic --no-input