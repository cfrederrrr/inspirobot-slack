FROM ruby:2.3.4

RUN apt-get update && \
    apt-get install -y net-tools

# Install gems
ENV APP_HOME /inspirobot
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY ./inspirobot $APP_HOME
RUN bundle install

# Start server
ENV PORT 9292
EXPOSE 9292
CMD ["rackup", "--host", "0.0.0.0"]
