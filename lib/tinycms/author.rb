# frozen_string_literal: true

module Tinycms
  class Author
    def initialize(id:, email:, first_name:, last_name:, created_at:, updated_at:)
      @id = id
      @email = email
      @first_name = first_name
      @last_name = last_name
      @created_at = created_at
      @updated_at = updated_at
    end

    attr_reader :id, :email, :first_name, :last_name, :created_at, :updated_at
  end
end
