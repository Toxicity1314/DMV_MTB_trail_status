class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :trail_system
end
