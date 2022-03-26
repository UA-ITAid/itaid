FROM ruby:3.0.3-slim
# install required dependencies
RUN apt-get update  && apt-get install -y make gcc git build-essential libpq-dev  && rm -rf /var/lib/apt/lists/*
