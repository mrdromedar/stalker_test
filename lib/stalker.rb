module Stalker
  def self.enqueue(*args)
    @queue ||=[]
    @queue.push args
  end

  def self.queue
    res = @queue
    @queue = []

    res
  end
end
