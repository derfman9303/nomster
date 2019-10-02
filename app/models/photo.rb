class Photo < ApplicationRecord
  belongs_to :place
  validates :picture, presence: true
  validates :caption, length: { maximum: 200 }
  mount_uploader :picture, PictureUploader
end
