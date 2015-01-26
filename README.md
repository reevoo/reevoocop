# Reevoocop

20% MonkeyPatch
80% YAML
100% Style

## Installation

Add this line to your application's Gemfile:

    gem 'reevoocop', require: false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reevoocop

## Usage

In a Rakefile
```ruby
require 'reevoocop/rake_task'
ReevooCop::RakeTask.new(:reevoocop)
```

In your shell
```
$ reevoocop
```

## Configuring / Contributing

1. You can't configure this, thats the point.
2. If you need to change our style guidelines, update the `lib/reevoocop.yml` file and open a pull request.
3. If you have a good reason to break the guidelines, you can [switch of the cop in question for the code in question, like this](https://github.com/bbatsov/rubocop#disabling-cops-within-source-code)
4. Please don't open a pull request unless you work at reevoo, if you don't but would like to [look at our website](http://reevoo.github.io/)
