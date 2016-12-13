class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :address, :name, :image, :lat, :lng, :google_place_id

  has_many :stops

  def image
    object.image.url
  end
end
