FROM python:3.6.12
ENV PYTHONUNBUFFERED 1
ENV DEBUG 0
ENV IS_DOCKER 1
RUN mkdir /hello_flask
WORKDIR /hello_flask
COPY . /hello_flask/
RUN pip install -r requirements.txt

