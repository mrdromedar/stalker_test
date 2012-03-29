# Stalker test

Enables to test stalker queue content.
To use it with rails, add an initializer to load stalker test when we are in testing mode: 
config/initializers/load_stalker_test.rb:
<pre>
if RAILS_ENV=="test" 
  require "stalker_test/stalker_test"
end
</pre>

To use it in your tests:
<pre>
def test_stalker
  Stalker.enqueue "test.job", "id" => 1

  assert_equal [["test.job", {"id"=>1}]], Stalker.queue
end
</pre>
