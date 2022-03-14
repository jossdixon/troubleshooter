class CreateTemplateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :template_items do |t|
      t.references :template, null: false, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
