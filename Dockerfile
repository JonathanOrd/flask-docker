FROM python:3.9

# install dependencies
RUN pip install pipenv
WORKDIR /app
COPY . .
RUN pipenv install --system

# run server on gunicorn
CMD gunicorn app:app -b 0.0.0.0:8080
