
require "stalker_test/version"

module Stalker
  def self.enqueue(*args)
    @queue ||= []

    @queue.push args
  end

  def self.queue
    @queue || []
  end
end
