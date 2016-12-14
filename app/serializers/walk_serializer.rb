class WalkSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :user, :user_id, :stop_ids

  has_many :stops
  belongs_to :user
end
