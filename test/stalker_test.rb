
require "test/unit"
require File.expand_path("../../lib/stalker", __FILE__)

class StalkerTest < Test::Unit::TestCase
  def test_enqueue
    Stalker.enqueue "test.job", "id" => 1

    assert_equal [["test.job", {"id"=>1}]], Stalker.queue
    assert_equal [], Stalker.queue
  end

  def test_queue
    # already tested by enqueue
  end
end
