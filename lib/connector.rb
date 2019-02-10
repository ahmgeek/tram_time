require_relative "parser"
require "http"

class Connector
  SENDER_ID = ENV.fetch("SENDER_ID")
  URI = "http://www.wienerlinien.at/ogd_realtime/monitor?rbl=361&activateTrafficInfo=stoerunglang&sender=#{SENDER_ID}"

  def self.waiting_time
    payload = get
    Parser.new(payload).build_response
  end

  def self.get
    HTTP.get(URI).to_s
  end
end
