# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby-youtube-dl/version"

Gem::Specification.new do |s|
  s.name        = "ruby-youtube-dl"
  s.version     = YoutubeDL::VERSION
  s.authors     = ["Ben Morris"]
  s.email       = ["ben@bnmrrs.com"]
  s.homepage    = ""
  s.summary     = %q{Wrapper around the youtube-dl python lib}
  s.description = %q{Wraps youtube-dl for easy package management}

  s.rubyforge_project = "ruby-youtube-dl"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end