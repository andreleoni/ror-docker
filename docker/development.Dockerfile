FROM public.ecr.aws/docker/library/ruby:3.1.2-alpine

ENV APP_HOME /rorapp

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

ADD . $APP_HOME

RUN apk --no-cache add gcc postgresql-dev postgresql-client build-base postgresql-dev tzdata nodejs npm

RUN npm install -g yarn@1.22.5

RUN bundle install

CMD ["/bin/sh"]
