require "json"

class Parser
  attr_accessor :response

  def initialize(payload)
    parsed_payload = JSON.parse(payload)
    self.response = get_deps(parsed_payload)
  end

  def get_deps(payload)
    payload.dig("data", "monitors", 0, "lines", 0, "departures", "departure")
  end

  def cound_down
    [
      response[0]["departureTime"]["countdown"],
      response[1]["departureTime"]["countdown"]
    ]
  end

  def build_response
    {
      version: "1.0",
      response: {
        outputSpeech: {
          type: "PlainText",
          text: "Next tram will be here in #{cound_down.first} minutes,\
And the one after will be here in #{cound_down.last} minutes"
        }
      }
    }
  end
end
