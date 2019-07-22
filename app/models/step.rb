class Step < ApplicationRecord
  belongs_to :recipe

  validates :title, presence: true, length: { maximum: 255 }
end
