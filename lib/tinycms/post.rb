# frozen_string_literal: true

module Tinycms
  class Post
    def initialize(id:, title:, author:, content:, content_plain_text:, created_at:, updated_at:)
      @id = id
      @title = title
      @author = author
      @content = content
      @content_plain_text = content_plain_text
      @created_at = created_at
      @updated_at = updated_at
    end

    attr_reader :id, :title, :author, :content, :content_plain_text, :created_at, :updated_at
  end
end
