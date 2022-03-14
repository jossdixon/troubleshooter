class Template < ApplicationRecord
  has_many :checklists
  has_many :template_items, dependent: :destroy
  has_one :checklist, dependent: :destroy

  validates :name, presence: true
end
