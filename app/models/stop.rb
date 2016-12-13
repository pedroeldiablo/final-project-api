class Stop < ApplicationRecord
  belongs_to :user
  belongs_to :place
  has_and_belongs_to_many :walks

  mount_uploader :image, ImageUploader
end
