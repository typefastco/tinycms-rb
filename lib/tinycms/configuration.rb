# frozen_string_literal: true

require "dry-configurable"

module Tinycms
  extend Dry::Configurable

  setting :api_key
end
