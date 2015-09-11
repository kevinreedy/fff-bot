FROM litaio/ruby:2.2.3

# Install gems
WORKDIR /app
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler --no-rdoc --no-ri && bundle install

# Add rest of project
ADD . /app

CMD ["bundle", "exec", "lita", "start"]
