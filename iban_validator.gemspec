$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "iban_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "iban_validator"
  s.version     = IbanValidator::VERSION
  s.authors     = ["Kasper Johansen"]
  s.email       = ["k@spernj.org"]
  s.homepage    = "https://www.github.com/kaspernj/iban_validator"
  s.summary     = "IBAN validator for ActiveRecord attributes."
  s.description = "IBAN validator for ActiveRecord attributes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency "iban-tools"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "forgery"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "i18n"
end
