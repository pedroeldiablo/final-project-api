class Stop < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :walk, optional: true

  mount_uploader :image, ImageUploader
end
