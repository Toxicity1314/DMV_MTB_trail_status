class Trail < ApplicationRecord
  belongs_to :trail_system
  has_many :issues
end
