$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "release_notes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "release_notes"
  s.version     = ReleaseNotes::VERSION
  s.authors     = ["Stitch Fix Engineering"]
  s.email       = ["eng@stitchfix.com"]
  s.homepage    = "http://tech.stitchfix.com"
  s.summary     = "Provides a simple way to include and manage release notes for internal applications"
  s.description = "Provides a simple way to include and manage release notes for internal applications"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "redcarpet"
  s.add_development_dependency "sqlite3"
end
