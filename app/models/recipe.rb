class Recipe < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :ingredients, dependent: :destroy

  validates :title, presence: true, length: { maximum: 255 }
end
