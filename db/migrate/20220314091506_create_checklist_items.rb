class CreateChecklistItems < ActiveRecord::Migration[6.0]
  def change
    create_table :checklist_items do |t|
      t.references :checklist, null: false, foreign_key: true
      t.references :template_item, null: false, foreign_key: true
      t.boolean :done
      t.boolean :resolved_the_issue
      t.integer :order

      t.timestamps
    end
  end
end
