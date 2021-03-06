# Yatube - Homework

![YaMDB%20workflow](https://github.com/mrvinil/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg) <br>
Это учебный проект по работе с **API**, разработанный в рамках курса **"Яндекс.Практикум - Python backend developer"**.

Проект доступен по адресу http://walshop.ru/

Админка http://walshop.ru/admin/

# Описание
API для сервиса YaMDb. Позволяет работать со следующими сущностями:

Отзывы (Получить список всех отзывов, создать новый отзыв, получить отзыв по id, частично обновить отзыв по id, удалить отзыв по id)

Комментарии к отзывам (Получить список всех комментариев к отзыву по id, создать новый комментарий для отзыва, получить комментарий для отзыва по id, частично обновить комментарий к отзыву по id, удалить комментарий к отзыву по id)

JWT-токен (Отправление confirmation_code на переданный email, получение JWT-токена в обмен на email и confirmation_code)

Пользователи (Получить список всех пользователей, создание пользователя, получить пользователя по username, изменить данные пользователя по username, удалить пользователя по username, получить данные своей учетной записи, изменить данные своей учетной записи)

Категории (типы) произведений (Получить список всех категорий, создать категорию, удалить категорию)

Категории жанров (Получить список всех жанров, создать жанр, удалить жанр)

Произведения, к которым пишут отзывы (Получить список всех объектов, создать произведение для отзывов, информация об объекте, обновить информацию об объекте, удалить произведение)
## Запуск (docker)
1) Запустить docker-compose:<br>
`docker-compose up`
   
2) Выполнить эти команды:<br>
   `sudo docker-compose exec web python manage.py makemigrations api`<br>
   `sudo docker-compose exec web python manage.py makemigrations users`<br>
   

3) Обязательно выполнить миграции:<br>
`sudo docker-compose exec web python manage.py migrate --noinput`
   

   
4) Создать суперюзера:<br>
`sudo docker-compose exec web python manage.py createsuperuser`
   

5) Собрать статику:<br>
`sudo docker-compose exec web python manage.py collectstatic --no-input`

## Usage
Запустите проект на своём компьютере, по адресу http://localhost:8000/redoc/ будет доступна документация по **API Yatube.**

