class ChangeDefaultForDone < ActiveRecord::Migration[6.0]
  def change
    change_column_default :checklist_items, :done, false
  end
end
