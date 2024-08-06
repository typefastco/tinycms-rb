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
          created_at: response_body["created_at"],
          updated_at: response_body["updated_at"]
        )
      end
    end
  end
end
