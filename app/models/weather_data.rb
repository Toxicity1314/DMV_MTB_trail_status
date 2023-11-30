class WeatherData < ApplicationRecord
  belongs_to :trail_system
  validates :hour, uniqueness: { scope: :trail_system_id }
  validates :precipitation_last_hour, :hour, :trail_system_id, presence: true

  def self.precip(trail_id, time_frame)
    time = Time.now.to_i - time_frame
    self.where(hour: (time)..(Time.now.to_i), trail_system_id: trail_id).sum(:precipitation_last_hour).round(3)
  end

  def self.freeze_thaw trail_id, time_frame
    time = Time.now.to_i - time_frame
    self.where(hour: (time)..(Time.now.to_i), trail_system_id: trail_id).minimum('soil_temp')
  end
end
