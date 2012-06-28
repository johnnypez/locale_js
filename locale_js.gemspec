# -*- encoding: utf-8 -*-

require File.expand_path('../lib/locale_js/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "locale_js"
  gem.version       = LocaleJs::VERSION
  gem.summary       = %q{Make Rails i18n available in javascript}
  gem.description   = %q{Make Rails i18n available in javascript}
  gem.license       = "MIT"
  gem.authors       = ["John Butler"]
  gem.homepage      = "https://github.com/johnnypez/locale_js"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rubygems-tasks", "~> 0.2"
  gem.add_development_dependency "rdoc", "~> 3.0"
  gem.add_development_dependency "rspec", "~> 2.4"
end
