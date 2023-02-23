class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :trail_system
end
