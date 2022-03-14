class Template < ApplicationRecord
  has_many :checklists
  has_many :template_items

  validates :name, presence: true
end
