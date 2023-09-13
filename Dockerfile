FROM ruby:2.7.0
WORKDIR /app
COPY . /app
RUN bundle install

ENV SENDER_ID=""
CMD puma -p 3000
EXPOSE 3000
