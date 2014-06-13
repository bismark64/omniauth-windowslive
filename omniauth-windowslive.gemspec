# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'omniauth/windowslive/version'

Gem::Specification.new do |s|
  s.name        = "omniauth-windowslive"
  s.version     = OmniAuth::Windowslive::VERSION
  s.authors     = ["Emiliano Coppo", "Joel AZEMAR"]
  s.email       = ["bismark64@gmail.com"]
  s.homepage    = "https://github.com/bismark64/omniauth-windowslive"
  s.summary     = 'Windows Live, Hotmail, SkyDrive, Windows Live Messenger, and other services... strategy for OmniAuth'

  s.rubyforge_project = "omniauth-windowslive"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'omniauth-oauth2', '~> 1.1.2'
  s.add_dependency 'multi_json', '~> 1.10.1'
  s.add_development_dependency 'rspec', '~> 3.0.0'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'webmock'
end