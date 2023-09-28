require 'rails_helper'

RSpec.describe RainTotal, type: :model do
  before do 
    time = Time.now.to_i

    TrailSystem.create(
    name: "Fredericksburg Quarry",
    lat: 38.3165,
    long: -77.4856,
    street: "Heritage Trail",
    city: "Fredericksburg",
    state: "VA",
    zipcode: "22401",
    trail_map:
      "https://fredtrails.org/wp-content/uploads/2021/05/fredericksburg-quarry-007.jpg",
    trail_forks_id: "14672",
  )
  72.times do
    time-=3600
    RainTotal.create(
    precipitation_last_hour: 1,
    hour: time,
    trail_system_id: 1
  )
  end

end
  describe ".precip" do
    context "given 24 hours" do
      it "returns 24" do
        expect(RainTotal.precip(1, 86400)).to eq(24)
      end
    end
  end

  describe ".precip" do
    context "given 48 hours" do
      it "returns 48" do
        expect(RainTotal.precip(1, 172800)).to eq(48)
      end
    end
  end

  describe ".precip" do
    context "given 72 hours" do
      it "returns 72" do
        debugger
        expect(RainTotal.precip(1, 259200)).to eq(72)
      end
    end
  end
end
