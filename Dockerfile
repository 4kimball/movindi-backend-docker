FROM python:3.7.7

RUN pip3 install django

WORKDIR /usr/src/app

COPY . .

WORKDIR ./back

RUN pip3 install -r requirements.txt
RUN python3 manage.py loaddata articles/movies.json
RUN python3 manage.py loaddata articles/actors.json
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate accounts
RUN python3 manage.py migrate articles

CMD ["python3", "manage.py", "runserver"]

EXPOSE 8000