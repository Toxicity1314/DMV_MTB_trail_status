class TrailSystemSerializer < ActiveModel::Serializer
  attributes :id, :trail_map, :address, :lat, :long
  has_many :issues
end
