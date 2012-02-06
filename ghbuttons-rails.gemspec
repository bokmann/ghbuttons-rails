# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ghbuttons-rails/version"

Gem::Specification.new do |s|
  s.name        = "ghbuttons-rails"
  s.version     = Ghbuttons::Rails::VERSION
  s.authors     = ["bokmann"]
  s.email       = ["dbock@codesherpas.com"]
  s.homepage    = ""
  s.summary     = %q{a sassified and gem packaged version if css3 github buttons}
  s.description = %q{a sassified and gem packaged version if css3 github buttons}

  s.rubyforge_project = "ghbuttons-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features,vendor}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "railties", "~> 3.1"
end
