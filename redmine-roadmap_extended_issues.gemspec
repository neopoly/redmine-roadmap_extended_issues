# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "roadmap_extended_issues/version"
require "roadmap_extended_issues/infos"

Gem::Specification.new do |spec|
  spec.name          = "redmine-roadmap_extended_issues"
  spec.version       = RoadmapExtendedIssues::VERSION
  spec.authors       = RoadmapExtendedIssues::Infos::AUTHORS.keys
  spec.email         = RoadmapExtendedIssues::Infos::AUTHORS.values
  spec.summary       = RoadmapExtendedIssues::Infos::DESCRIPTION
  spec.description   = RoadmapExtendedIssues::Infos::DESCRIPTION
  spec.homepage      = RoadmapExtendedIssues::Infos::URL
  spec.license       = RoadmapExtendedIssues::Infos::LICENSE

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.0"
  spec.add_dependency "redmine-more_view_hooks"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop"
end
