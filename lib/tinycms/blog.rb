# frozen_string_literal: true

module Tinycms
  class Blog
    def initialize(id:, name:, description:, posts: [])
      @id = id
      @name = name
      @description = description
      @posts = posts
    end
  end
end
