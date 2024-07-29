# frozen_string_literal: true

require "faraday"

module Tinycms
  class Client
    BASE_URL = "https://www.tinycms.app"

    def initialize(api_key)
      @api_key = api_key
    end

    attr_reader :api_key

    def client
      @client ||= Faraday.new(
        url: BASE_URL,
        headers: { "Content-Type": "application/json", "API-Key": api_key }
      ) do |conn|
        conn.request :json
        conn.response :json
      end
    end
  end
end
