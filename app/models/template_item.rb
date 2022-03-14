class TemplateItem < ApplicationRecord
  belongs_to :template
  has_many :checklist_items

  validates :action, presence: true
  validates :order, presence: true, numericality: true
end
