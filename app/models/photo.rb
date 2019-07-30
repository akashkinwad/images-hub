class Photo < ApplicationRecord
  has_one_attached :image

  belongs_to :user
  belongs_to :album, optional: true

  validates :tagline, presence: true

  scope :with_preloaded_image, -> { preload(image_attachment: :blob) }
end
