FROM python:3.7.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 install -r requirements.txt

COPY . .

RUN python manage.py makemigrations
RUN python manage.py migrate accounts
RUN python manage.py migrate articles

CMD ["python", "manage.py", "runserver"]

EXPOSE 8000