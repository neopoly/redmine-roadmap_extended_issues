module RoadmapExtendedIssues
  # Registers this gems a Redmine plugin and applies the needed patches
  class RedminePlugin
    include RoadmapExtendedIssues::Infos

    def initialize
      register!
      boot!
    end

    private

    def register!
      Redmine::Plugin.register :roadmap_extended_issues do
        name NAME
        author AUTHORS.keys.join(", ")
        description DESCRIPTION
        version VERSION
        url URL
        author_url URL
        directory Engine.root
      end
    end

    def boot!
      require "roadmap_extended_issues/hooks"
    end
  end
end
