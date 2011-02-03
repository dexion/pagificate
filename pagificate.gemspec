# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pagificate/version"

Gem::Specification.new do |s|
  s.name        = "pagificate"
  s.version     = Pagificate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew Bowerman"]
  s.email       = ["github@andrewbowerman.com"]
  s.homepage    = "http://github.com/bowerman4875/pagificate"
  s.summary     = "Drop in pages for your rails app"
  s.description = "Quickly drop pages into your rails app"

  s.rubyforge_project = "pagificate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency  'rails', '3.0.3'
  s.add_dependency  'permalink_fu', '1.0.0'
end