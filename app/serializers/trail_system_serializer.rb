class TrailSystemSerializer < ActiveModel::Serializer
  attributes :id, :name, :trail_map, :address, :lat, :long, :last_24, :last_48, :last_72, :trail_forks_id, :get_last_updated
  has_many :comments
  has_many :issues
  has_many :trails
end
