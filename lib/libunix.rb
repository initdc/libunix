# frozen_string_literal: true

require_relative "libunix/version"
require_relative "libunix/unix"
require_relative "libunix/re_unix"

module Libunix
  class Error < StandardError; end
  # Your code goes here...

  module Libunix::Unix
    extend Unix
  end

  module Libunix::ReUnix
    extend ReUnix
  end
end
