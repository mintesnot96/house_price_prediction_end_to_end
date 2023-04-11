FROM python:3.9
COPY . /app
WORKDIR /app
RUN pip install -r requirements
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app