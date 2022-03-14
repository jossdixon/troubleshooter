class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.references :template, null: false, foreign_key: true
      t.datetime :resolved_at

      t.timestamps
    end
  end
end
