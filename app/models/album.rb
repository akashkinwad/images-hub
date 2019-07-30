class Album < ApplicationRecord
  belongs_to :user
  has_many :photos
  accepts_nested_attributes_for :photos, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
  validate :validate_photos

  private
    def validate_photos
      errors.add(:photos, "count for this album if full") if photos.size > 25
    end
end
