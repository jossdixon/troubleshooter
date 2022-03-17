class ChangeResolvedAtToNullInChecklist < ActiveRecord::Migration[6.0]
  def change
    change_column_null :checklists, :resolved_at, true
  end
end
