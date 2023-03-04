class RainTotal < ApplicationRecord
  belongs_to :trail_system
  validates :hour, uniqueness: true

  def self.precip trail_id, time_frame
    precip_total = 0
    time = Time.now.to_i - time_frame
    precip_list = self.where(hour: (time)..(Time.now.to_i), trail_system_id: trail_id)

    precip_list.each do |hour|
      precip_total += hour.precipitation_last_hour
    end
    
    precip_total *= 0.03937008
    precip_total.round(3)
  end
end
