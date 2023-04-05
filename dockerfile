FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /mvc_app
WORKDIR /mvc_app

COPY Gemfile /mvc_app/Gemfile
COPY Gemfile.lock /mvc_app/Gemfile.lock

RUN bundle install
RUN rails webpacker:install

COPY config/webpacker.yml /mvc_app/config/webpacker.yml
COPY . /mvc_app
