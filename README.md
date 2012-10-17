# Stalker test

Easily test the stalker jobs you enqueue.

## Installation

Add this line to your application's Gemfile:

    gem "stalker_test", :git => "git://github.com/mrdromedar/stalker_test.git", :require => false

And then execute:

    $ bundle

## Usage

To use it with rails, add an initializer to load stalker test when you are in testing mode:

config/initializers/load_stalker_test.rb:

<pre>
require "stalker_test" if Rails.env == "test"
</pre>

To use it in your tests:

<pre>
def test_stalker
  Stalker.enqueue "test.job", "id" => 1

  assert_equal [["test.job", { "id" => 1 }]], Stalker.queue
end
</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

