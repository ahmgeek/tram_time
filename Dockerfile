FROM ruby:2.5.3
WORKDIR /app
COPY . /app
RUN cd /app
RUN gem install bundler
RUN bundle install

ENV SENDER_ID=""
CMD puma -p 3000
EXPOSE 3000
