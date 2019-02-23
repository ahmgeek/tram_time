FROM ruby:2.5.3
WORKDIR /app
COPY . /app
RUN bundle install

ENV SENDER_ID=""
CMD puma -p 3000
EXPOSE 3000
