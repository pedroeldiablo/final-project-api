class User < ApplicationRecord
  has_many :walks
  has_many :stops


  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create
end
