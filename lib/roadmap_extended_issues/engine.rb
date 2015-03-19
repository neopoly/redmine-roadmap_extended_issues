require "roadmap_extended_issues/redmine_plugin"

module RoadmapExtendedIssues
  # Simple engine to support the Redmine plugin
  class Engine < ::Rails::Engine
    config.to_prepare do
      RedminePlugin.new
    end
  end
end
