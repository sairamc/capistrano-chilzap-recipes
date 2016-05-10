# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/recipes/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-recipes"
  spec.version       = "1.0.0"
  spec.authors       = ["Sairam Chilappagari"]
  spec.email         = ["chilzap@chilzap.com"]
  spec.summary       = "Comlpete library of capistrano tasks to prepare and install all the components needed to get the web applications up and running without sshing into the machine"
  spec.description   = "Able to create user, add keys, install nginx, ngx_pagespeed, mysql, postgreSQL, Redis, RVM, Ruby, Rails, Bundler, Memcache, Mongodb, NodeJs, PM2, Strider, etc. See homepage for additional inforation and instructions."
  spec.homepage      = "https://github.com/sairamc/capistrano-recipes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_dependency "highline"
  spec.add_dependency 'sshkit', '>=1.2'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'tf', '~>0.4.3'

  spec.add_runtime_dependency 'capistrano', '~> 3.1', '>= 3.1.0'

  spec.files        = Dir.glob('{lib,script}/**/*.{rb,rake,sh}')
  spec.test_files   = Dir.glob('test/**/*.{rb,sh}')
end
