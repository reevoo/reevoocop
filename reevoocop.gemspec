lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "reevoocop/version"

Gem::Specification.new do |spec|
  spec.name          = "reevoocop"
  spec.version       = ReevooCop::VERSION
  spec.authors       = ["Reevoo"]
  spec.email         = ["developers@reevoo.com"]
  spec.summary       = "Like RuboCop only for Reevoo"
  spec.description   = "RuboCop patched for to enforce the use of Reevoo Style Guidelines"
  spec.homepage      = "http://reevoo.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.74"
  spec.add_dependency "rubocop-performance", "~> 1.4.1"
  spec.add_development_dependency "bundler", ">= 1.17"
  spec.add_development_dependency "rake"
end
