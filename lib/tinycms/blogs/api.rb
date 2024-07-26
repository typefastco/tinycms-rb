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

      def get(blog_id)
        response = client.get("/api/blogs/#{blog_id}")
        Tinycms::Blogs::Mapper.map(response.body)
      end
    end
  end
end
