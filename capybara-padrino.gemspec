# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/padrino/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara-padrino"
  spec.version       = Capybara::Padrino::VERSION
  spec.authors       = ["doabit"]
  spec.email         = ["doinsist@gmail.com"]
  spec.description   = %q{Capybara and rspec config for padrino.}
  spec.summary       = %q{Capybara and rspec config for padrino.}
  spec.homepage      = "https://github.com/doabit/capybara-padrino"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'capybara'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
