# frozen_string_literal: true

module Tinycms
  module Blogs
    class Mapper
      def self.map(response_body)
        posts = response_body["posts"].map do |post_response|
          ::Tinycms::Posts::Mapper.map(post_response)
        end
        Blog.new(
          id: response_body["id"],
          name: response_body["name"],
          description: response_body["description"],
          posts: posts,
          created_at: response_body["created_at"],
          updated_at: response_body["updated_at"]
        )
      end
    end
  end
end
