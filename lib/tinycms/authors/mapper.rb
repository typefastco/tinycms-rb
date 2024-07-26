# frozen_string_literal: true

module Tinycms
  module Authors
    class Mapper
      def self.map(response_body)
        Author.new(
          id: response_body["id"],
          email: response_body["email"],
          first_name: response_body["first_name"],
          last_name: response_body["last_name"]
        )
      end
    end
  end
end
