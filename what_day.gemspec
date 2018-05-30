# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'what_day/version'

Gem::Specification.new do |spec|
  spec.name          = "what_day"
  spec.version       = WhatDay::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

  spec.summary       = %q{Simple library to return human-readable day of the week for a given date}
	spec.description   = %q{Queries for the day of a given date, or the day of the beginning or end of a month}
  spec.homepage      = "https://github.com/ej2015/what_day.git"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

	spec.add_dependency "activesupport", ">= 4.2"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
