FROM ruby:latest AS base

ENV APP_HOME /mikeyockey-rails
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
RUN bundle install

COPY . $APP_HOME
ENTRYPOINT ["bin/rails"]
CMD ["bin/rails", "server", "--port", "3000", "--binding", "0.0.0.0"]
