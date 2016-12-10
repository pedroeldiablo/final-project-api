class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :walks, :stops

  has_many :walks
  has_many :stops
end
