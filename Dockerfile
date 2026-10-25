FROM ruby:3.3

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

RUN gem install sinatra sinatra-contrib rackup puma ruby_kml rack

WORKDIR /usr/src/app

# COPY Gemfile Gemfile.lock ./
# RUN bundle install

COPY . .

CMD ["rackup", "-o", "0.0.0.0", "-p", "4567"]
