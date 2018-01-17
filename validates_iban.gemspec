$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "validates_iban/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "validates_iban"
  s.version     = ValidatesIban::VERSION
  s.authors     = ["Kasper Johansen"]
  s.email       = ["k@spernj.org"]
  s.homepage    = "https://www.github.com/kaspernj/validates_iban"
  s.summary     = "IBAN validator for ActiveRecord attributes."
  s.description = "IBAN validator for ActiveRecord attributes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency "iban-tools"
end
