class TemplateItem < ApplicationRecord
  belongs_to :template
  has_one :checklist_item, dependent: :destroy

  validates :action, presence: true
  validates :order, presence: true, numericality: true
end
