# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/analytics/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-analytics"
  spec.version       = Rails::Analytics::VERSION
  spec.authors       = ["gdi2290"]
  spec.email         = ["rubygems@gdi2290.com"]
  spec.description   = %q{Basic analytics gem for Rails}
  spec.summary       = %q{Basic analytics gem for Rails}
  spec.homepage      = "http://gdi2290.github.io/rails-analytics/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
