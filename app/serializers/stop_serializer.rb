class StopSerializer < ActiveModel::Serializer
  attributes :id, :purpose, :position, :public, :walks, :image, :walk_ids

  belongs_to :place
  has_many :walks
  belongs_to :user

  def image
    object.image.url
  end
end
