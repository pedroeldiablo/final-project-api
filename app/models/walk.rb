class Walk < ApplicationRecord
  has_many :stops, dependent: :destroy
  belongs_to :user
end
