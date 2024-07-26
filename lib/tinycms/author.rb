# frozen_string_literal: true

module Tinycms
  class Author
    def initialize(id:, email:, first_name:, last_name:)
      @id = id
      @email = email
      @first_name = first_name
      @last_name = last_name
    end

    attr_reader :id, :email, :first_name, :last_name
  end
end
