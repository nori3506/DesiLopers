FROM ruby:2.6.5
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mariadb-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
		curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
		echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
		apt-get update && apt-get install -y yarn

RUN mkdir /desilopers
WORKDIR /desilopers
ADD Gemfile /desilopers/Gemfile
ADD Gemfile.lock /desilopers/Gemfile.lock

RUN bundle install
ADD . /desilopers
