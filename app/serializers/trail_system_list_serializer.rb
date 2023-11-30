class TrailSystemListSerializer < ActiveModel::Serializer
    attributes :id, :name, :trail_map, :street, :city, :state, :zipcode, :last_24, :last_48, :last_72, :freeze_thaw
    has_many :issues
  end
  