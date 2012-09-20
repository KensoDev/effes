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

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rails', '~> 3.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
end
