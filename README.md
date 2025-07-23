Kittygram - социальная сеть для размещения домашних питомцев семейства кошачьих.

Клонировать репозиторий:

git clone git@github.com:AlexandraBudko/kittygram_final.git

Перейти в директорию бэкенд:

cd kittygram_final/backend

Cоздать и активировать виртуальное окружение:

python3 -m venv venv
source env/bin/activate

Установить зависимости из файла requirements.txt:

pip install -r requirements.txt

Выполнить миграции:

python3 manage.py migrate

Запустить проект:

python3 manage.py runserver

Запрос на регистрацию нового пользователя:

https://kittygrambudko.hopto.org/signin

Запрос на добавление нового котика:

https://kittygrambudko.hopto.org/cats/add

Технологии:
Django REST
Python 3.9
Gunicorn
Nginx
JS
Node.js
PostgreSQL
Docker

Автор:
