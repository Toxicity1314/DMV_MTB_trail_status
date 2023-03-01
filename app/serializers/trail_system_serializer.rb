class TrailSystemSerializer < ActiveModel::Serializer
  attributes :id, :name, :trail_map, :address, :lat, :long, :last_24, :last_48, :last_72, :trail_forks_id
  has_many :issues
end
