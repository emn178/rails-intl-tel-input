# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intl-tel-input/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-intl-tel-input"
  spec.version       = IntlTelInput::VERSION
  spec.authors       = ["Chen, Yi-Cyuan"]
  spec.email         = ["emn178@gmail.com"]

  spec.summary       = %q{Integrate with intl-tel-input to provide international telephone numbers input and form helper.}
  spec.description   = %q{Integrate with intl-tel-input to provide international telephone numbers input and form helper.}
  spec.homepage      = "https://github.com/emn178/rails-intl-tel-input"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionview"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
