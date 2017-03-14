FROM ruby:2.1

MAINTAINER Chloe

ARG NODE_ENV

# make sure apt is up to date
RUN apt-get update
RUN apt-get install sudo -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install nodejs -y
RUN apt-get install vim -y
RUN apt-get install cron -y

# Create project directory
RUN mkdir -p /auto_stock_server
WORKDIR /auto_stock_server

# Install project dependencies
ADD ./build.sh /auto_stock_server
RUN /bin/bash -c "./build.sh"

# For docker volume first
COPY Gemfile* ./
RUN sudo bundle install

EXPOSE 3000

# docker build --build-arg NODE_ENV="development" -t chloe/ror-practice-dev .
# docker exec -it ror-practice-dev /bin/bash
