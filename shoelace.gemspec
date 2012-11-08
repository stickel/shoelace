# -*- encoding: utf-8 -*-
require File.expand_path('../lib/shoelace/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Stickel"]
  gem.email         = ["mike@screenflicker.com"]
  gem.description   = %q{A simple, configurable set of CSS and JS to get an app started}
  gem.summary       = %q{Simple, configurable CSS and JS to get a basic site on it's feet}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "shoelace"
  gem.require_paths = ["lib"]
  gem.version       = Shoelace::VERSION
end
