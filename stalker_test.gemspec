# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stalker_test/version"

Gem::Specification.new do |s|
  s.name        = "stalker_test"
  s.version     = StalkerTest::VERSION
  s.authors     = ["Markus Jansen"]
  s.email       = ["markus.jansen@plainpicture.de"]
  s.summary     = %q{Easily test the stalker jobs you enqueue.}
  s.description = %q{Easily test the stalker jobs you enqueue.}
  s.homepage    = "https://github.com/mrdromedar/stalker_test"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
end
