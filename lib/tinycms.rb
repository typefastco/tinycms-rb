# frozen_string_literal: true

require_relative "tinycms/version"
require_relative "tinycms/configuration"
require_relative "tinycms/author"
require_relative "tinycms/blog"
require_relative "tinycms/post"

module Tinycms
  class Error < StandardError; end
end
