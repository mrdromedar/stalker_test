
# StalkerTest

Easily test the stalker jobs you enqueue.

## Installation

Add this line to your application's Gemfile:

<pre>
  group :test do
    gem "stalker_test"
  end
</pre>

And then execute:

<pre>
  $ bundle
</pre>

## Usage

When stalker_test is loaded, your jobs will no longer be enqueued in beanstalk.
Instead, they are simply added to an in-memory queue, which can be accessed.

To use it in your tests:

<pre>
  def test_stalker
    Stalker.enqueue "test.job", "id" => 1

    assert_equal ["test.job", { "id" => 1 }], Stalker.queue.last
  end
</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

