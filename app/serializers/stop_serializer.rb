class StopSerializer < ActiveModel::Serializer
  attributes :id, :purpose, :position, :public, :walks

  belongs_to :place
  has_many :walks
  belongs_to :user
end
