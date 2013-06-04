# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mkpasswd/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Gibson"]
  gem.email         = ["darth.gibson@gmail.com"]
  gem.description   = %q{Generates crypt(3) $6$ (SHA512) hashed passwords on Mac OS X}
  gem.summary       = %q{A simple tool for generating crypt(3) $6$ (SHA512) hashed passwords on Mac OS X.}
  gem.homepage      = "https://github.com/PrototypeAlex/mkpasswd"
  gem.has_rdoc = false

  gem.files         = `git ls-files`.split($\)
  gem.executables     = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mkpasswd"
  gem.require_paths = ["lib"]
  gem.version       = Mkpasswd::VERSION
  gem.platform        = Gem::Platform::RUBY

  gem.add_dependency 'unix-crypt'
end