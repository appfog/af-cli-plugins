# -*- encoding: utf-8 -*-

#############
# WARNING: Separate from the Gemfile. Please update both files
#############

require File.expand_path("../lib/appfog-vmc-plugin/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "appfog-vmc-plugin"
  s.version     = VMCAppfog::VERSION.dup
  s.authors     = ["Tim Santeford", "Joe Moon"]
  s.email       = ["support@appfog.com"]
  s.homepage    = "http://www.appfog.com/"
  s.description = s.summary = %q{
    AppFog specific plugins for the AF CLI
  }

  s.platform = Gem::Platform::RUBY

  s.files         = %w{Rakefile} + Dir.glob("{lib}/**/*")
  s.test_files    = Dir.glob("spec/**/*")
  s.require_paths = ["lib"]

  s.add_runtime_dependency "cfoundry", "~> 0.5.2"
end
