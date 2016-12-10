class Walk < ApplicationRecord
  has_and_belongs_to_many :stops
  belongs_to :user
end
