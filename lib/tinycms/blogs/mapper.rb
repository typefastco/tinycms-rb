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
          posts: posts
        )
      end
    end
  end
end
