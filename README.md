
# StalkerTest

Easily test the stalker jobs you enqueue.

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem "stalker_test"
end
```

And then execute:

```
$ bundle
```

Alternatively, you can of course install it without bundler via:

```
$ gem install stalker_test
```

## Usage

When stalker_test is loaded, your jobs will no longer be enqueued in beanstalk.
Instead, they are simply added to an in-memory queue, which can be accessed.

Thus, please always check that you don't load this gem into your production
environment! Otherwise your jobs won't be enqueued anymore.

To use it in your tests:

```ruby
def test_stalker
  Stalker.enqueue "test.job", "id" => 1

  assert_equal ["test.job", { "id" => 1 }], Stalker.queue.last
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Added some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

