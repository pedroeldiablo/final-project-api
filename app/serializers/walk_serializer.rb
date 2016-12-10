class WalkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :user_id, :stops, :stop_ids

  has_many :stops
  belongs_to :user
end
