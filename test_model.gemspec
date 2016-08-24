# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_model/version'

Gem::Specification.new do |spec|
  spec.name          = "test_model"
  spec.version       = TestModel::VERSION
  spec.authors       = ["zoujinfu"]
  spec.email         = ["zoujinfu0608@163.com"]

  spec.summary       = %q{just test.}
  spec.description   = %q{just test.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "bcrypt"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
