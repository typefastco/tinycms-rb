# frozen_string_literal: true

require "faraday"

module Tinycms
  class Client
    BASE_URL = "https://www.tinycms.app"

    def client
      @client ||= Faraday.new(
        url: BASE_URL,
        headers: { "Content-Type": "application/json", "API-Key": Tinycms.config.api_key }
      ) do |conn|
        conn.request :json
        conn.response :json
      end
    end
  end
end
