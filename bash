django-admin startproject todo_app
cd todo_app
python manage.py startapp todo
python manage.py makemigrations
python manage.py migrate
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
python manage.py runserver
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
http://127.0.0.1:8000/
