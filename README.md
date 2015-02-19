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

Or to only have it lint files after the specified commit:

```ruby
task :reevoocop do
  exit 27 unless system("reevoocop #{files_that_changed_since_t_minus_0}")
end

def files_that_changed_since_t_minus_0
  `git diff-tree --no-commit-id --name-only -r 19c297ff4a91b47c9af735a935c72ea5a2f05791 HEAD`
    .split("\n").select { |f| f.match(/(rb\z)/) && File.exist?(f) }.join(' ')
end
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
