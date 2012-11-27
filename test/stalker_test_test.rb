
require "test/unit"
require File.expand_path("../../lib/stalker_test", __FILE__)

class StalkerTestTest < Test::Unit::TestCase
  def test_enqueue
    Stalker.enqueue "test.job", "id" => 1

    assert_equal [["test.job", { "id" => 1 }]], Stalker.queue
  end

  def test_queue
    # already tested by enqueue
  end
end
