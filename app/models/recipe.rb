class Recipe < ApplicationRecord
  has_many :steps, dependent: :destroy

  validates :title, presence: true, length: { maximum: 255 }

  scope :with_published, -> { where(status: :published ) }

  enum status: {
    draft: 0,
    published: 1,
  }
end
