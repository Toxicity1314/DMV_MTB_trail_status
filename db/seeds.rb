# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
time = Time.now
weather = ENV["WEATHER_API_KEY"]
ts1 =
  TrailSystem.create(
    name: "Fredericksburg Quarry",
    lat: 38.3165,
    long: -77.4856,
    address: "Heritage Trail, Fredericksburg, VA 22401",
    trail_map:
      "https://fredtrails.org/wp-content/uploads/2021/05/fredericksburg-quarry-007.jpg",
    trail_forks_id: "14672",
  )

t1 = Trail.create(name: "Beach Trail", trail_system_id: ts1.id)
t2 = Trail.create(name: "Big Bill Trail", trail_system_id: ts1.id)
t3 = Trail.create(name: "Dishwasher Trail", trail_system_id: ts1.id)
t4 = Trail.create(name: "Epiphany Trail", trail_system_id: ts1.id)
t5 = Trail.create(name: "Fall Quarry Trail", trail_system_id: ts1.id)
t6 = Trail.create(name: "Gratitude Trail", trail_system_id: ts1.id)
t7 = Trail.create(name: "Monolith Trail", trail_system_id: ts1.id)
t8 = Trail.create(name: "Naysayer Trail", trail_system_id: ts1.id)
t9 = Trail.create(name: "Oboy Loop", trail_system_id: ts1.id)
t10 = Trail.create(name: "Owl Loop", trail_system_id: ts1.id)
t11 = Trail.create(name: "Pins and Needles Trail", trail_system_id: ts1.id)
t12 = Trail.create(name: "Pool Pass East Trail", trail_system_id: ts1.id)
t13 = Trail.create(name: "Pool Pass West Trail", trail_system_id: ts1.id)
t14 = Trail.create(name: "Ridgeline Trail", trail_system_id: ts1.id)
t15 = Trail.create(name: "Scout Trail", trail_system_id: ts1.id)
t16 = Trail.create(name: "Sunshine Trail", trail_system_id: ts1.id)
t17 = Trail.create(name: "USGS Trail", trail_system_id: ts1.id)

i1 = Issue.create(trail_id: t14.id, issue: "treedown")

ts2 =
  TrailSystem.create(
    name: "Motts Run Reservoir",
    lat: 38.3193,
    long: -77.5537,
    address: "Motts Run Access Rd, Fredericksburg, VA 22407",
    trail_map:
      "https://fredtrails.org/wp-content/uploads/2021/12/motts_trail_map_ed005.png",
    trail_forks_id: "21189",
  )

t18 = Trail.create(name: "Duff Green Trail", trail_system_id: ts2.id)
t19 = Trail.create(name: "Olde Towne Trail", trail_system_id: ts2.id)
t20 = Trail.create(name: "Reservoir Trail", trail_system_id: ts2.id)
t21 = Trail.create(name: "Rock Mine Trail", trail_system_id: ts2.id)
t22 = Trail.create(name: "Snuffleupagus Trail", trail_system_id: ts2.id)
t23 = Trail.create(name: "Trench Hill Trail", trail_system_id: ts2.id)

ts3 =
  TrailSystem.create(
    name: "Locust Shade Park",
    lat: 38.5323,
    long: -77.3531,
    address: "Locust Shade Triangle, VA 22172",
    trail_map:
      "https://scontent.fric1-1.fna.fbcdn.net/v/t39.30808-6/329160081_1375495043218800_3114874958501087442_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=kJYsl_VGFAkAX_2k7_p&_nc_ht=scontent.fric1-1.fna&oh=00_AfClI3Hk04h_9xp349wH3QQayFeAMdI9z7YgWgm58FVdAQ&oe=64026A03",
    trail_forks_id: "18974",
  )

t24 = Trail.create(name: "Beginner/Bolitas Trail", trail_system_id: ts3.id)
t25 = Trail.create(name: "Paw Paw Alley", trail_system_id: ts3.id)
t26 = Trail.create(name: "Col Du Shade", trail_system_id: ts3.id)
t27 = Trail.create(name: "95th St.", trail_system_id: ts3.id)
t28 =
  Trail.create(name: "Blue Trail (Breaker Breaker)", trail_system_id: ts3.id)
t29 = Trail.create(name: "Pink Trail (Tuttie Fruitti)", trail_system_id: ts3.id)
t30 = Trail.create(name: "Palmer Trail", trail_system_id: ts3.id)
t31 = Trail.create(name: "White Trail (Old Blue)", trail_system_id: ts3.id)
t32 = Trail.create(name: "Gray Trail (Power)", trail_system_id: ts3.id)
t33 = Trail.create(name: "Big Fallacy", trail_system_id: ts3.id)
t34 = Trail.create(name: "Atomic", trail_system_id: ts3.id)

ts4 =
  TrailSystem.create(
    name: "Lake Fairfax Park",
    lat: 38.9516,
    long: -77.3317,
    address: "1400 Lake Fairfax Dr, Reston, VA 20190",
    trail_map:
      "https://scontent.fric1-1.fna.fbcdn.net/v/t39.30808-6/255906924_1734507286735073_4784584277968118013_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=4ifnO_C0Rm8AX_wkOiB&_nc_ht=scontent.fric1-1.fna&oh=00_AfAjOAVGKiMlOzwVNGrLWE0u6vdq9lYiBEsOy7OuDNqbsg&oe=64037625",
    trail_forks_id: "9033",
  )

t35 = Trail.create(name: "Rails to River Trail", trail_system_id: ts4.id)
t36 = Trail.create(name: "Chestnut Grove Connector", trail_system_id: ts4.id)
t37 = Trail.create(name: "Upland Trail", trail_system_id: ts4.id)
t38 = Trail.create(name: "South Side Trail", trail_system_id: ts4.id)
t39 = Trail.create(name: "Bentana Park Connector", trail_system_id: ts4.id)
t40 = Trail.create(name: "Hillside Trail", trail_system_id: ts4.id)
t41 = Trail.create(name: "Pumptrack Connector", trail_system_id: ts4.id)
t42 = Trail.create(name: "Sidetrack Trail", trail_system_id: ts4.id)
t43 = Trail.create(name: "Campground Loop", trail_system_id: ts4.id)
t44 = Trail.create(name: "Lakeside Trail", trail_system_id: ts4.id)
t45 = Trail.create(name: "Amphitheater Trail", trail_system_id: ts4.id)
t46 = Trail.create(name: "Cliff Hnager Trail", trail_system_id: ts4.id)
t47 = Trail.create(name: "Hunter Mill Bypass", trail_system_id: ts4.id)
t48 = Trail.create(name: "North Boundary Trail", trail_system_id: ts4.id)
t49 = Trail.create(name: "Lakeside Trail", trail_system_id: ts4.id)

ts5 =
  TrailSystem.create(
    name: "Laurel Hill",
    lat: 38.7014,
    long: -77.2457,
    address: "Laurel Hill Mountain Bike Trails, Lorton, VA",
    trail_map:
      "http://lh6.ggpht.com/_mkxTK_Bq4tg/STBTBLO5ovI/AAAAAAAAAik/Z1JLUkOVDCE/s720/LaurelHillMap[1].jpg",
    trail_forks_id: "15985",
  )

t50 = Trail.create(name: "Cross County Trail", trail_system_id: ts5.id)
t51 = Trail.create(name: "Giles Run Meadow Trail", trail_system_id: ts5.id)
t52 = Trail.create(name: "Workhouse Trail", trail_system_id: ts5.id)
t53 = Trail.create(name: "Slaughterhouse Loop", trail_system_id: ts5.id)
t54 = Trail.create(name: "Dairy Barn Loop", trail_system_id: ts5.id)
t55 = Trail.create(name: "Pasture Loop", trail_system_id: ts5.id)
t56 = Trail.create(name: "Power Station Loop", trail_system_id: ts5.id)
t57 = Trail.create(name: "Apple Orchard Loop", trail_system_id: ts5.id)

ts6 =
  TrailSystem.create(
    name: "Meadowood Recreation Area",
    lat: 38.6832,
    long: -77.2091,
    address: "10100 Gunston Rd, Lorton, VA 22079",
    trail_map:
      "https://www.findyourchesapeake.com/globalimages/place_maps/meadwoodMap.jpg",
    trail_forks_id: "11275",
  )

t58 = Trail.create(name: "Belmont Connector", trail_system_id: ts6.id)
t59 = Trail.create(name: "Boss", trail_system_id: ts6.id)
t60 = Trail.create(name: "Connector", trail_system_id: ts6.id)
t61 = Trail.create(name: "Giles Run", trail_system_id: ts6.id)
t62 = Trail.create(name: "South Branch Access", trail_system_id: ts6.id)
t63 = Trail.create(name: "South Branch Loop", trail_system_id: ts6.id)
t64 = Trail.create(name: "South Branch Loop Alternate", trail_system_id: ts6.id)
t65 = Trail.create(name: "Stinger Trail", trail_system_id: ts6.id)
t66 = Trail.create(name: "Yard Sale", trail_system_id: ts6.id)
epoch_time = Time.now.to_i
TrailSystem.all.each do |trail_system|
  response =
    HTTParty.get(
      "https://api.open-meteo.com/v1/forecast?latitude=#{trail_system.lat}&longitude=#{trail_system.long}&hourly=precipitation&precipitation_unit=inch&timeformat=unixtime&timezone=America%2FNew_York&past_days=4",
    )
  i = 0
  response["hourly"]["time"].each do |time|
    if time < epoch_time
    RainTotal.create(
      trail_system_id: trail_system.id,
      precipitation_last_hour: response["hourly"]["precipitation"][i],
      hour: time,
    )
    i += 1
  end
  end
end
