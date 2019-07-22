class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, length: { maximum: 255 }
end
