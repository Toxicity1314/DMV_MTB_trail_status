class WeatherDataSerializer < ActiveModel::Serializer
  attributes :id, :precipitation_last_3_hours
  has_one :trail_system
end
