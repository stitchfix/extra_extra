$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "extra_extra/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "extra_extra"
  s.version     = ExtraExtra::VERSION
  s.authors     = ["Stitch Fix Engineering","Dave Copeland","Simeon Willbanks"]
  s.email       = ["opensource@stitchfix.com","davetron5000@gmail.com","simeon@simeons.net"]
  s.homepage    = "https://github.com/stitchfix/extra_extra"
  s.summary     = "Let your users read all about how awesome your app is!"
  s.description = "Provides a simple way to include and manage release notes for internal applications by writing a markdown file"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_runtime_dependency "rails", ">= 4"
  s.add_runtime_dependency "redcarpet", ">= 3.3.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency('rspec_junit_formatter')
end
