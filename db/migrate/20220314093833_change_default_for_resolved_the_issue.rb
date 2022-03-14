class ChangeDefaultForResolvedTheIssue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :checklist_items, :resolved_the_issue, false
  end
end
