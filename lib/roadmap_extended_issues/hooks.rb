# Add a new view hook into Redmine's template
MoreViewHooks.add(
  :view_versions_index_issues_table_issue,
  virtual_path: "versions/index",
  insert_after: "table.related-issues td.subject",
  context:      "issue: issue"
)

module RoadmapExtendedIssues
  class Hooks < Redmine::Hook::ViewListener
    def view_versions_index_issues_table_issue(context)
      render_extended_issue(context[:issue])
    end

    private

    def render_extended_issue(issue)
      return "" unless issue
      content_tag :td, h(issue.status.name)
    end
  end
end
