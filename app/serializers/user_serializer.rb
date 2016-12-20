class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :walks, :stops, :image

  has_many :walks
  has_many :stops

  def image
    object.image.url
  end
end
