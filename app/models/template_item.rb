class TemplateItem < ApplicationRecord
  belongs_to :template

  validates :order, presence: true, numericality: true
end
