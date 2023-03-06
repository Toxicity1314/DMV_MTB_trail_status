class TrailSystem < ApplicationRecord
  has_many :trails
  has_many :issues, through: :trails
  has_many :rain_totals

  def last_24
    RainTotal.precip id, 86_400
  end

  def last_48
    RainTotal.precip id, 172_800
  end

  def last_72
    RainTotal.precip id, 259_200
  end
end
