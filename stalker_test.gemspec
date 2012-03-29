# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stalker_test/version"

Gem::Specification.new do |s|
  s.name        = "stalker_test"
  s.version     = StalkerTest::VERSION
  s.authors     = ["Markus Jansen"]
  s.email       = ["markus.jansen@plainpicture.de"]
  s.homepage    = ""
  s.summary     = %q{Enables to test stalker queue content.}
  s.description = %q{Enables to test stalker queue content.}

  s.rubyforge_project = "stalker_test"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
end
