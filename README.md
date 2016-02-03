# Reevoocop

*20% MonkeyPatch, 80% YAML, 100% Style*

Reevoocop uses [RuboCop](https://github.com/bbatsov/rubocop) to enforce Reevoo's style guidelines.

"What are the guidelines?", I hear you bellow. Well, [check out our commented settings file](https://github.com/reevoo/reevoocop/blob/master/lib/reevoocop.yml) for more information.

## Installation

Add this line to your application's Gemfile:

    gem 'reevoocop', require: false

And then execute:

    $ bundle

Or install it globally with:

    $ gem install reevoocop

## Usage

In a Rakefile:

```ruby
require 'reevoocop/rake_task'
ReevooCop::RakeTask.new(:reevoocop)
```

This can be quite dramatic if you haven't been using a style checker previously and you have, say, 10 years of code written. Why not only lint files changed in the last commit?

```ruby
task :reevoocop do
  exit 27 unless system("reevoocop #{files_that_changed_since_t_minus_0}")
end

def files_that_changed_since_t_minus_0
  `git diff-tree --no-commit-id --name-only -r 19c297ff4a91b47c9af735a935c72ea5a2f05791 HEAD`
    .split("\n").select { |f| f.match(/(rb\z)/) && File.exist?(f) }.join(' ')
end
```

You can also use Reevoocop stand-alone:

```
$ reevoocop
```

## Configuring / Contributing

1. You can't configure this, thats the point.
2. If you need to change our style guidelines, update the `lib/reevoocop.yml` file and open a pull request.
3. If you have a good reason to break the guidelines, you can [switch off the cop for the code like this.](https://github.com/bbatsov/rubocop#disabling-cops-within-source-code)
4. Please don't open a pull request unless you work at Reevoo, if you don't but would like to, [look at our website!](http://reevoo.github.io/)
