class TrailSystem < ApplicationRecord
  has_many :trails, dependent: :destroy
  has_many :rain_totals, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :issues, through: :trails

  def last_24
    RainTotal.precip id, 86_400
  end

  def last_48
    RainTotal.precip id, 172_800
  end

  def last_72
    RainTotal.precip id, 259_200
  end

  def get_last_updated
    get_updated_at = RainTotal.where(trail_system_id: id).order(:updated_at).last["updated_at"].in_time_zone("EST")
    minute = get_updated_at.min < 10 ? "0#{get_updated_at.min}": "#{get_updated_at.min}"
    time = "last updated on #{get_updated_at.month}/#{get_updated_at.day}/#{get_updated_at.year} at #{get_updated_at.hour}:#{minute} EST"
  end
end
