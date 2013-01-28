# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pagificate/version"

Gem::Specification.new do |s|
  s.name        = "pagificate"
  s.version     = Pagificate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew Bowerman"]
  s.email       = ["github@andrewbowerman.com"]
  s.homepage    = "http://github.com/devfu/pagificate"
  s.summary     = "Simple semi-static page management Rails Engine"
  s.description = "Simple semi-static page management Rails Engine"

  s.rubyforge_project = "pagificate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency  'rails', '>=3.0.3'
  s.add_dependency  'permalink_fu', '>=1.0.0'
  
  s.add_development_dependency 'rspec', '>=2.4.0'
  s.add_development_dependency 'rspec-rails', '>=2.4.0'
  s.add_development_dependency 'capybara', '>=0.4.0'
  s.add_development_dependency 'factory_girl_rails', '>=1.0.1'
  s.add_development_dependency 'database_cleaner', >='0.6.2'
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'launchy', '>=0.3.7'
end
