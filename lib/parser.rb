require "json"

class Parser
  def initialize(payload)
    payload = JSON.parse(payload)
    self.departure_times = get_departure_times(payload)
  end

  def build_response
    {
      version: "1.0",
      response: {
        outputSpeech: {
          type: "PlainText",
          text: "Next tram will be here in #{cound_down.first} minutes, \
And the one after will be here in #{cound_down[1]} minutes, \
later on after #{cound_down.last} minutes"
        }
      }
    }
  end

  private

  attr_accessor :departure_times

  def get_departure_times(payload)
    payload.dig("data", "monitors", 0, "lines", 0, "departures", "departure")
  end

  def cound_down
    [
      departure_times.dig(0, "departureTime", "countdown"),
      departure_times.dig(1, "departureTime", "countdown"),
      departure_times.dig(2, "departureTime", "countdown")
    ]
  end
end
