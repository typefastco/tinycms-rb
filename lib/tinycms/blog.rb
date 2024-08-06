# frozen_string_literal: true

module Tinycms
  class Blog
    def initialize(id:, name:, description:, posts: [], created_at:, updated_at:)
      @id = id
      @name = name
      @description = description
      @posts = posts
      @created_at = created_at
      @updated_at = updated_at
    end

    attr_reader :id, :name, :description, :posts, :created_at, :updated_at
  end
end
