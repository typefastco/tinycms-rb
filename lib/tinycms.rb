# frozen_string_literal: true

require_relative "tinycms/version"
require_relative "tinycms/configuration"
require_relative "tinycms/author"
require_relative "tinycms/blog"
require_relative "tinycms/post"
require_relative "tinycms/base_api"
require_relative "tinycms/client"
require_relative "tinycms/blogs/api"
require_relative "tinycms/blogs/mapper"

module Tinycms
  class Error < StandardError; end
end
