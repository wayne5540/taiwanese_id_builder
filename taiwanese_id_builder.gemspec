$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "taiwanese_id_builder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "taiwanese_id_builder"
  s.version     = TaiwaneseIdBuilder::VERSION
  s.authors     = ["Wayne Chu"]
  s.email       = ["wayne.5540@gmail.com"]
  s.homepage    = "https://github.com/wayne5540/taiwanese_id_builder"
  s.summary     = "Taiwanese Id Builder"
  s.description = "Taiwanese Id Builder."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

end
