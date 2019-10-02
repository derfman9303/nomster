class Photo < ApplicationRecord
  belongs_to :place
  validates :picture, presence: true
  validates :caption, presence: true, length: { maximum: 200 }
  mount_uploader :picture, PictureUploader
end
