 FROM python:3.6.4
 ENV PYTHONUNBUFFERED 1
 ENV PORT 5000
 RUN mkdir /code
 WORKDIR /code
 ADD requirements.txt /code/
 RUN pip install -r requirements.txt
 ADD . /code/
 CMD python3 manage.py runserver 0.0.0.0:$PORT
 #CMD [ "python3", "manage.py", "runserver 0.0.0.0:$PORT"]