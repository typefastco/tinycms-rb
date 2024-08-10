# frozen_string_literal: true

module Tinycms
  module Posts
    class Mapper
      def self.map(response_body)
        Post.new(
          id: response_body["id"],
          title: response_body["title"],
          author: ::Tinycms::Authors::Mapper.map(response_body["author"]),
          content: response_body["content"],
          content_plain_text: response_body["content_plain_text"],
          slug: response_body["slug"],
          created_at: Time.zone.parse(response_body["created_at"]),
          updated_at: Time.zone.parse(response_body["updated_at"])
        )
      end
    end
  end
end
