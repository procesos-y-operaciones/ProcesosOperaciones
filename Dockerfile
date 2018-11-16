FROM ruby:2.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs && apt-get install imagemagick

RUN mkdir /pyo_ms
WORKDIR /pyo_ms

ADD Gemfile /pyo_ms/Gemfile
ADD Gemfile.lock /pyo_ms/Gemfile.lock

RUN bundle install
ADD . /pyo_ms

EXPOSE 3000
