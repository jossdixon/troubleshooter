class ChecklistItem < ApplicationRecord
  belongs_to :checklist
  belongs_to :template_item
end
