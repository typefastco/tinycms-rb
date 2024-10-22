# frozen_string_literal: true

module Tinycms
  module Authors
    class Mapper
      def self.map(response_body)
        Author.new(
          id: response_body["id"],
          email: response_body["email"],
          first_name: response_body["first_name"],
          last_name: response_body["last_name"],
          full_name: response_body["full_name"],
          title: response_body["title"],
          slug: response_body["slug"],
          avatar_url: response_body["avatar_url"],
          created_at: Time.zone.parse(response_body["created_at"]),
          updated_at: Time.zone.parse(response_body["updated_at"])
        )
      end
    end
  end
end
