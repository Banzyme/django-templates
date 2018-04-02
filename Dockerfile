FROM python:3.6.4  
ENV PYTHONUNBUFFERED 1 
ENV PORT 5000 
RUN mkdir /config  
ADD /config/requirements.txt /config/  
RUN pip install -r /config/requirements.txt  
RUN mkdir /src 
WORKDIR /src
CMD gunicorn twisted.wsgi -b 0.0.0.0:$PORT --log-file -