class TemplateItem < ApplicationRecord
  belongs_to :template
  has_many :checklist_items, dependent: :destroy

  validates :action, presence: true
  validates :order, presence: true, numericality: true
end
