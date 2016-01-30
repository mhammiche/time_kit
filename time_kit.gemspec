# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'time_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "time_kit"
  spec.version       = TimeKit::VERSION
  spec.authors       = ["Mourad Hammiche"]
  spec.email         = ["mourad.hammiche@gmail.com"]

  spec.summary       = %q{Simple DSL for building time frame object}
  spec.description   = %q{Easily build and manipulate time frame object using a simple DSL}
  spec.homepage      = "https://github.com/mhammiche/time_kit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
