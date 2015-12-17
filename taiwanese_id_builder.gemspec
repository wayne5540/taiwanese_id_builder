$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "taiwanese_id_builder/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "taiwanese_id_builder"
  spec.version     = TaiwaneseIdBuilder::VERSION
  spec.authors     = ["Wayne Chu"]
  spec.email       = ["wayne.5540@gmail.com"]
  spec.homepage    = "https://github.com/wayne5540/taiwanese_id_builder"
  spec.summary     = "Taiwanese Id Builder"
  spec.description = "Taiwanese Id Builder."
  spec.add_development_dependency "rspec"
  spec.post_install_message = <<-MESSAGE
!    The 'taiwanese_id_builder' gem has been deprecated and has been replaced by 'taiwanese_id_validator'.
!    See: https://rubygems.org/gems/taiwanese_id_validator
!    And: https://github.com/wayne5540/taiwanese_id_validator
MESSAGE

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

end
