# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "withardry/version"

Gem::Specification.new do |s|
  s.name        = "withardry"
  s.version     = Withardry::VERSION
  s.authors     = ["Kir Shatrov", "Andrey Ognevsky"]
  s.email       = ["razor.psp@gmail.com"]
  s.homepage    = "https://github.com/evrone/withardry"
  s.summary     = %q{A simple plugin to DRY models}
  s.description = ""

  s.rubyforge_project = "withardry"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
