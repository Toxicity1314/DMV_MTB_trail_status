class RainTotal < ApplicationRecord
  belongs_to :trail_system
  validates :hour, uniqueness: { scope: :trail_system_id }
  validates :precipitation_last_hour, :hour, :trail_system_id, presence: true

  def self.precip(trail_id, time_frame)
    precip_total = 0
    time = Time.now.to_i - time_frame
    precip_list =
      self.where(hour: (time)..(Time.now.to_i), trail_system_id: trail_id)

    precip_list.each do |hour|
      puts hour.precipitation_last_hour
      precip_total += hour.precipitation_last_hour
    end
    precip_total.round(3)
  end
end
