# frozen_string_literal: true

require_relative './api/app'

mapping = { '/' => Api }

run Rack::URLMap.new(mapping)
