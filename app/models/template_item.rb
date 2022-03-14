class TemplateItem < ApplicationRecord
  belongs_to :template

  validates :action, presence: true
  validates :order, presence: true, numericality: true
end
