class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 16 }
  validates :content, presence: true, length: { maximum: 255 }

end
