FROM python:3.7.7

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY . /app

RUN python manage.py makemigrations
RUN python manage.py migrate accounts
RUN python manage.py migrate articles

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]