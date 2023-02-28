class TrailSystemSerializer < ActiveModel::Serializer
  attributes :id, :name, :trail_map, :address, :lat, :long
  has_many :issues
end
