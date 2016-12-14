class Walk < ApplicationRecord
  has_many :stops
  belongs_to :user
end
