# frozen_string_literal: true

module Tinycms
  class BaseApi
    def client
      @client ||= Tinycms::Client.new.client
    end
  end
end
