class TrailSerializer < ActiveModel::Serializer
  attributes :id, :trail_name
  has_one :trail_system
end
