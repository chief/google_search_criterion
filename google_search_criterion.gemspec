# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_search_criterion/version'

Gem::Specification.new do |spec|
  spec.name          = "google_search_criterion"
  spec.version       = GoogleSearchCriterion::VERSION
  spec.authors       = ["Giorgos Tsiftsis"]
  spec.email         = ["giorgos.tsiftsis@skroutz.gr"]
  spec.summary       = %q{ A toy to compare words against google search results }
  spec.description   = %q{ A toy to compare words against google search results }
  spec.homepage      = "https://github.com/chief/google_search_criterion"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mechanize"
  spec.add_dependency "thor"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-byebug"
end
