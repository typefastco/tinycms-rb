# frozen_string_literal: true

module Tinycms
  class Post
    def initialize(id:, title:, author:, content:)
      @id = id
      @title = title
      @author = author
      @content = content
    end
  end
end
