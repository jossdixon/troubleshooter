class Checklist < ApplicationRecord
  belongs_to :template
  has_many :checklist_items, dependent: :destroy
end
