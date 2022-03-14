class AddActionToTemplateItems < ActiveRecord::Migration[6.0]
  def change
    add_column :template_items, :action, :string
  end
end
