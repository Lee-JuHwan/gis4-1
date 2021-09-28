FROM python:3.9.0

WORKDIR /home/

RUN echo "rkelayf8aefpqddk"

RUN git clone https://github.com/Lee-JuHwan/gis4-1.git

WORKDIR /home/gis4-1/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=djangoProject0.settings.deploy && python manage.py migrate --settings=djangoProject0.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=djangoProject0.settings.deploy djangoProject0.wsgi --bind 0.0.0.0:8000"]

