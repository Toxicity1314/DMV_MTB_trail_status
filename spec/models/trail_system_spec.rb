require 'rails_helper'

RSpec.describe TrailSystem, type: :model do
  before do
    @ts1 = TrailSystem.create(
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
    @ts2 =TrailSystem.create(
      name:"Carvins Cove",
      lat: 37.3579,
       long: -79.9920,
       street: "3097 Timberview Rd",
       city: "Roanoke",
       state: "VA",
       zipcode: "24019",
       trail_map: "https://images.singletracks.com/blog/wp-content/uploads/2013/08/Cove-0-orig.jpg",
       trail_forks_id: "3568"
    )
    @ts3 =
  TrailSystem.create(
    name: "Motts Run Reservoir",
    lat: 38.3193,
    long: -77.5537,
    street: "Motts Run Access Rd",
    city: "Fredericksburg",
    state: "VA",
    zipcode: "22407",
    trail_map:
      "https://fredtrails.org/wp-content/uploads/2021/12/motts_trail_map_ed005.png",
    trail_forks_id: "21189",
  )
  @ts4 =
  TrailSystem.create(
    name: "Locust Shade Park",
    lat: 38.5323,
    long: -77.3531,
    street: "4701 Locust Shade Dr",
    city: "Triangle",
    state: "VA",
    zipcode: "22172",
    trail_map:
      "https://cdn.shopify.com/s/files/1/0022/0269/7837/products/mockup-a2884992_1024x1024.jpg?v=1571015720",
    trail_forks_id: "18974",
  )
  end

  describe ".paginate" do
    context "given page 1, per_page 3, order_option name" do
      it "returns carv fred locust" do
        expect(TrailSystem.paginate(1, 3,"name")). to eq([@ts2, @ts1, @ts4])
      end
    end

  end
end
