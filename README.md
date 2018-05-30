# WhatDay
A little gem that returns a human-readable day of the week for a given date.
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'what_day'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install what_day

## Usage

```
##initialize
client = WhatDay.client

client.day Date.new(2018,3,4)
##Sunday

client.beginning_of_March_2018
##Thursday

client.end_of_mar_2018
##Sunday

client.day Date.new(2018,2,33)
##nil

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/what_day.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

