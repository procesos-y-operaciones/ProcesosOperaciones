FROM ruby:2.3

RUN mkdir /pyo_ms
WORKDIR /pyo_ms

ADD Gemfile /pyo_ms/Gemfile
ADD Gemfile.lock /pyo_ms/Gemfile.lock

RUN bundle install
ADD . /pyo_ms

EXPOSE 3000
