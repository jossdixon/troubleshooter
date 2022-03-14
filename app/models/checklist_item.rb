class ChecklistItem < ApplicationRecord
  belongs_to :checklist
  belongs_to :template_item

  validates :order, presence: true, numericality: true
end
