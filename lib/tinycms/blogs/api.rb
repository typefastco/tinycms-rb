# frozen_string_literal: true

require "retriable"

module Tinycms
  module Blogs
    class Api < BaseApi
      def self.get_all
        Retriable.retriable do
          response = client.get("/api/blogs")
          blogs = response.body
          blogs.map do |blog_response|
            Tinycms::Blogs::Mapper.map(blog_response)
          end
        end
      end

      def self.get(blog_id)
        Retriable.retriable do
          response = client.get("/api/blogs/#{blog_id}")
          Tinycms::Blogs::Mapper.map(response.body)
        end
      end
    end
  end
end
