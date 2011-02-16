# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cache_method/version"

Gem::Specification.new do |s|
  s.name        = "cache_method"
  s.version     = CacheMethod::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Seamus Abshere"]
  s.email       = ["seamus@abshere.net"]
  s.homepage    = ""
  s.summary     = %q{Provides cache_method}
  s.description = %q{Lets you cache methods (to memcached, redis, etc.) sort of like you can memoize them}

  s.rubyforge_project = "cache_method"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  
  s.add_development_dependency 'redis'
  s.add_development_dependency 'activesupport', '>=2.3.4'
  s.add_development_dependency 'i18n' # activesupport
  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'memcached'
  s.add_development_dependency 'dalli'
  s.add_development_dependency 'memcache-client'
  # if RUBY_VERSION >= '1.9'
  #   s.add_development_dependency 'ruby-debug19'
  # else
  #   s.add_development_dependency 'ruby-debug'
  # end
end
