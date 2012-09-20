# -*- encoding: utf-8 -*-
require File.expand_path('../lib/effes/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Avi Tzurel"]
  gem.email         = ["avi@kensodev.com"]
  gem.description   = "Easily load a nil class for your relations"
  gem.summary       = "Easily load a nil class for your relations"
  gem.homepage      = "http://www.avi.io"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "effes"
  gem.require_paths = ["lib"]
  gem.version       = Effes::VERSION

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rails', '~> 3.0'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'simplecov'
end
