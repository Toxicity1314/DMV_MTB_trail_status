class TrailSystemSerializer < ActiveModel::Serializer
  attributes :id, :name, :trail_map, :street, :city, :state, :zipcode, :lat, :long, :last_24, :last_48, :last_72, :trail_forks_id, :get_last_updated, :freeze_thaw
  has_many :comments
  has_many :issues
  has_many :trails
end
