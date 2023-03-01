class TrailSystem < ApplicationRecord
    has_many :trails
    has_many :issues, through: :trails
    has_many :rain_totals

    def last_24
        RainTotal.precip id, 86400
    end

    def last_48
        RainTotal.precip id, 172800
    end

    def last_72
        RainTotal.precip id, 259200
    end
end
