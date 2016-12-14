class StopSerializer < ActiveModel::Serializer
  attributes :id, :purpose, :position, :public, :image, :walk_id

  belongs_to :place
  has_many :walk
  belongs_to :user

  def image
    object.image.url
  end
end
