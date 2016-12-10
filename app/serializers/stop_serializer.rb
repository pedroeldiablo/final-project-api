class StopSerializer < ActiveModel::Serializer
  attributes :id, :purpose, :position, :image, :public, :walks, :place

  has_one :place
  has_many :walks
  belongs_to :user
end
