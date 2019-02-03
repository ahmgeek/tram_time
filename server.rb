require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'

  gem "http"
  gem "pry"
  gem 'json', require: false
end

require 'http'

SENDER_ID= 'test'

def get_times
  response = HTTP.get("http://www.wienerlinien.at/ogd_realtime/monitor?rbl=361&activateTrafficInfo=stoerunglang&sender=#{SENDER_ID}")
  parsed_response = JSON.parse(response)
  load_times(parsed_response)
end

def load_times(payload)
  lines = []
  monitors = payload["data"]["monitors"]
  monitors.each do |monitor|
    lines.push monitor["lines"]
  end

  get_dep_times(lines)
end

def get_dep_times(lines)
  deps = []

  lines.flatten.each do |line|
    deps << line["departures"]["departure"]
  end

  parse_times deps
end

def parse_times(deps)
  dep = deps.first.first
  puts dep
  count_down    = dep["departureTime"]["countdown"]
  time_real     = dep["departureTime"]["timeReal"]
  time_planned  = dep["departureTime"]["timePlanned"]

  puts count_down
  puts time_real
  puts time_planned
end

get_times
