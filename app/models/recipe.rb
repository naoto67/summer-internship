class Recipe < ApplicationRecord
  has_many :steps

  validates :title, length: { maximum: 255 }, presence: true
  validates :image_url, length: { maximum: 255 }
end
