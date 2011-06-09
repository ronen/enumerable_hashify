$:.push File.expand_path("../lib", __FILE__)
require 'enumerable_hashify/version'

Gem::Specification.new do |s|
  s.name = 'enumerable_hashify'
  s.version = EnumerableHashify::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = "2011-06-08"
  s.authors = ['Ronen Barzel']
  s.email = 'ronen@barzel.org'
  s.homepage = 'http://github.com/ronen/enumerable_hashify'
  s.summary = %Q{Defines Enumerable#hashify, which creates a hash whose keys are the enumerable's elements, with given or computed values.}
  s.description = %Q{Defines Enumerable#hashify, which creates a hash with the enumerable's elements as keys and with a given constant value or with block-computed values}
  s.extra_rdoc_files = [
    'LICENSE',
    'README.rdoc',
  ]

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.7')
  s.rubygems_version = '1.3.7'
  s.specification_version = 3

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bueller'
  s.add_development_dependency 'rake', "0.8.7"
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'simplecov-gem-adapter'
end

