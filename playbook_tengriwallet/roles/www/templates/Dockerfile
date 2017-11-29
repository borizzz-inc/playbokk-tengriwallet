FROM ubuntu
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev netcat-openbsd
RUN apt-get install -y postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
EXPOSE 8001
COPY ./web_app.sh /myapp/web_app.sh
