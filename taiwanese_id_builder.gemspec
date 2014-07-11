$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "taiwanese_id_builder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "taiwanese_id_builder"
  s.version     = TaiwaneseIdBuilder::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of TaiwaneseIdBuilder."
  s.description = "TODO: Description of TaiwaneseIdBuilder."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.8"

  s.add_development_dependency "sqlite3"
end
