class Place < ApplicationRecord
  has_many :stops

  mount_uploader :image, ImageUploader
end
