# frozen_string_literal: true

module Tinycms
  class BaseApi
    def initialize(api_key)
      @api_key = api_key
    end

    protected

    attr_reader :api_key

    def client
      @client ||= Tinycms::Client.new(api_key).client
    end
  end
end
