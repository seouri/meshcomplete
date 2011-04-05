# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "meshcomplete/version"

Gem::Specification.new do |s|
  s.name        = "meshcomplete"
  s.version     = Meshcomplete::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joon Lee"]
  s.email       = ["seouri@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Meshcomplete is a Ruby on Rails engine for MeSH autocomplete search box built with jQuery UI.}
  s.description = %q{}

  s.rubyforge_project = "meshcomplete"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
