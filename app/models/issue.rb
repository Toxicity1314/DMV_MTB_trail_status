class Issue < ApplicationRecord
  validates :trail_id, :issue, presence: true
  belongs_to :trail
end
