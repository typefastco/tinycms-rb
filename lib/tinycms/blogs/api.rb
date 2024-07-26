# frozen_string_literal: true

module Tinycms
  module Blogs
    class Api < BaseApi
      def get_all
        response = client.get("/api/blogs")
        blogs = response.body
        blogs.map do |blog_response|
          Tinycms::Blogs::Mapper.map(blog_response)
        end
      end
    end
  end
end
