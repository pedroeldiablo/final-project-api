class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :address, :name, :image, :lat, :lng, :google_place_id

  belongs_to :stops
end
