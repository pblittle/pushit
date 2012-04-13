$:.push File.expand_path("../lib", __FILE__)
require "pushit/version"

Gem::Specification.new do |s|
  s.name        = "pushit"
  s.version     = Pushit::VERSION
  s.authors     = ["P. Barrett Little"]
  s.email       = ["barrett@barrettlittle.com"]
  s.homepage    = "http://barrettlittle.com"
  s.summary     = ""
  s.description = ""

  s.files         = `git ls-files`.split("\n")

  s.add_dependency "fog", "~> 1.3.1"
end
