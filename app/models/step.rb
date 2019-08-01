class Step < ApplicationRecord
  belongs_to :recipe

  validates :description, length: { maximum: 255 }
end
