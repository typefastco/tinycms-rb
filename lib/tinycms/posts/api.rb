# frozen_string_literal: true

require "retriable"

module Tinycms
  module Posts
    class Api < BaseApi
      def self.get(post_id)
        Retriable.retriable do
          response = client.get("/api/posts/#{post_id}")
          Tinycms::Posts::Mapper.map(response.body)
        end
      end
    end
  end
end
