class TrailSystem < ApplicationRecord
    has_many :trails
    has_many :issues, through: :trails
end
