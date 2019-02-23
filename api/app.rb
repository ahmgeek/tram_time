require 'syro'

require_relative '../lib/connector.rb'

Api = Syro.new do
  post do
    response = Connector.waiting_time

    res.json(response.to_json)
  end
end
