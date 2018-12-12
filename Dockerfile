FROM ruby:2.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /pyo_ms
WORKDIR /pyo_ms

COPY Gemfile /pyo_ms/Gemfile
COPY Gemfile.lock /pyo_ms/Gemfile.lock

RUN bundle install
COPY . /pyo_ms
