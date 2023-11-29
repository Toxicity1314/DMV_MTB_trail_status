# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Comment.delete_all
Issue.delete_all
WeatherData.delete_all
Trail.delete_all
User.delete_all
TrailSystem.delete_all
puts "Seeding Data"
ts1 =
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
    street: "Motts Run Access Rd",
    city: "Fredericksburg",
    state: "VA",
    zipcode: "22407",
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
    street: "4701 Locust Shade Dr",
    city: "Triangle",
    state: "VA",
    zipcode: "22172",
    trail_map:
      "https://cdn.shopify.com/s/files/1/0022/0269/7837/products/mockup-a2884992_1024x1024.jpg?v=1571015720",
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
    street: "1400 Lake Fairfax Dr",
    city: "Reston",
    state: "VA",
    zipcode: "20190",
    trail_map:
      "https://images.singletracks.com/blog/wp-content/uploads/2009/10/Lake-Fairfax-375x250.png",
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
    street: "Laurel Hill Mountain Bike Trails",
    city: "Lorton",
    state: "VA",
    zipcode: "22079",
    trail_map:
      "http://1.bp.blogspot.com/_g0YuboCNUU8/S-hGmTiVngI/AAAAAAAAbas/l3ITh1NEojk/s1600/LaurelHillEquestTrails.gif",
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
    street: "10100 Gunston Rd",
    city: "Lorton",
    state: "VA",
    zipcode: "22079",
    trail_map:
      "",
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

ts7 = 
TrailSystem.create(
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
t67 = Trail.create(name: "Happy Valley Trail", trail_system_id: ts7.id)
t68 = Trail.create(name: "Brushy Mountain Trail", trail_system_id: ts7.id)
t69 = Trail.create(name: "Horse Pen Trail", trail_system_id: ts7.id)
t70 = Trail.create(name: "Tunnel Trail", trail_system_id: ts7.id)
t71 = Trail.create(name: "Riley Circle", trail_system_id: ts7.id)
t72 = Trail.create(name: "Bennett Springs Loop", trail_system_id: ts7.id)
t73 = Trail.create(name: "Lower Comet", trail_system_id: ts7.id)
t74 = Trail.create(name: "Kerncliff", trail_system_id: ts7.id)
t75 = Trail.create(name: "Araminta", trail_system_id: ts7.id)
t76 = Trail.create(name: "Songbird", trail_system_id: ts7.id)
t77 = Trail.create(name: "Arrowhead", trail_system_id: ts7.id)
t78 = Trail.create(name: "Enchanted Forest", trail_system_id: ts7.id)
t79 = Trail.create(name: "Little Bell", trail_system_id: ts7.id)
t80 = Trail.create(name: "Hotel", trail_system_id: ts7.id)
t81 = Trail.create(name: "Tuck-A-Way", trail_system_id: ts7.id)
t82 = Trail.create(name: "Schoolhouse", trail_system_id: ts7.id)
t83 = Trail.create(name: "Sawmill Branch", trail_system_id: ts7.id)
t84 = Trail.create(name: "Four Gorge", trail_system_id: ts7.id)
t85 = Trail.create(name: "Four Gorge Extension", trail_system_id: ts7.id)
t86 = Trail.create(name: "First Deck", trail_system_id: ts7.id)
t87 = Trail.create(name: "Lakeside", trail_system_id: ts7.id)
t88 = Trail.create(name: "Tinker Creek", trail_system_id: ts7.id)
t89 = Trail.create(name: "Upper Coment", trail_system_id: ts7.id)
t90 = Trail.create(name: "Jacobs Drop", trail_system_id: ts7.id)
t91 = Trail.create(name: "The Trough", trail_system_id: ts7.id)
t92 = Trail.create(name: "Buck", trail_system_id: ts7.id)
t93 = Trail.create(name: "Hi-Dee-Hoe", trail_system_id: ts7.id)
t94 = Trail.create(name: "OG", trail_system_id: ts7.id)
t95 = Trail.create(name: "Old Hi-Dee-Hoe", trail_system_id: ts7.id)
t96 = Trail.create(name: "Hemlock Tunnel", trail_system_id: ts7.id)
t97 = Trail.create(name: "Gauntlet", trail_system_id: ts7.id)
t98 = Trail.create(name: "Rattlin' Run", trail_system_id: ts7.id)
t99 = Trail.create(name: "Trough Expert", trail_system_id: ts7.id)

ts8 = 
TrailSystem.create(
  name:"Frederick Watershed",
  lat: 39.5210, 
   long: -77.4964,
   street: "10420 Hamburg Rd",
   city: "Frederick",
   state: "MD",
   zipcode: "21702",
   trail_map: "https://i.ytimg.com/vi/e8GnoBewjtM/sddefault.jpg",
   trail_forks_id: "9607"
)

t100 = Trail.create(name: "Albatross", trail_system_id: ts8.id)
t101 = Trail.create(name: "Blue Balls", trail_system_id: ts8.id)
t102 = Trail.create(name: "Boundary Line", trail_system_id: ts8.id)
t103 = Trail.create(name: "Buck Flats Trail", trail_system_id: ts8.id)
t104 = Trail.create(name: "Capitol Hill", trail_system_id: ts8.id)
t105 = Trail.create(name: "Catoctin Trail", trail_system_id: ts8.id)
t106 = Trail.create(name: "Connector", trail_system_id: ts8.id)
t107 = Trail.create(name: "Creampie", trail_system_id: ts8.id)
t108 = Trail.create(name: "Dave's Trail", trail_system_id: ts8.id)
t109 = Trail.create(name: "Death March", trail_system_id: ts8.id)
t110 = Trail.create(name: "Double D", trail_system_id: ts8.id)
t111 = Trail.create(name: "Evolution", trail_system_id: ts8.id)
t112 = Trail.create(name: "Extended Death March", trail_system_id: ts8.id)
t113 = Trail.create(name: "F2/New Berg", trail_system_id: ts8.id)
t114 = Trail.create(name: "Fun House", trail_system_id: ts8.id)
t115 = Trail.create(name: "Golf Ball", trail_system_id: ts8.id)
t116 = Trail.create(name: "Green Eggs and Ham", trail_system_id: ts8.id)
t117 = Trail.create(name: "Headless Hollow", trail_system_id: ts8.id)
t118 = Trail.create(name: "Hoe", trail_system_id: ts8.id)
t119 = Trail.create(name: "Huggy Bear", trail_system_id: ts8.id)
t120 = Trail.create(name: "Iceberg", trail_system_id: ts8.id)
t121 = Trail.create(name: "Key Hiway", trail_system_id: ts8.id)
t122 = Trail.create(name: "Killer Bee", trail_system_id: ts8.id)
t123 = Trail.create(name: "Knucklebuster", trail_system_id: ts8.id)
t124 = Trail.create(name: "Kubla Khan", trail_system_id: ts8.id)
t125 = Trail.create(name: "Lakeside connector", trail_system_id: ts8.id)
t126 = Trail.create(name: "Lawnmower", trail_system_id: ts8.id)
t127 = Trail.create(name: "Little Canaan", trail_system_id: ts8.id)
t128 = Trail.create(name: "Lower Volkswagon", trail_system_id: ts8.id)
t129 = Trail.create(name: "Mail Man", trail_system_id: ts8.id)
t130 = Trail.create(name: "Moe's Cut", trail_system_id: ts8.id)
t131 = Trail.create(name: "Mouse Trap", trail_system_id: ts8.id)
t132 = Trail.create(name: "Not The Road Climb - Alternate", trail_system_id: ts8.id)
t133 = Trail.create(name: "Pantyline", trail_system_id: ts8.id)
t134 = Trail.create(name: "Pit", trail_system_id: ts8.id)
t135 = Trail.create(name: "Red Bypass Trail", trail_system_id: ts8.id)
t136 = Trail.create(name: "Salamander Connector", trail_system_id: ts8.id)
t137 = Trail.create(name: "Salamander Trail", trail_system_id: ts8.id)
t138 = Trail.create(name: "Sand Flats Trail", trail_system_id: ts8.id)
t139 = Trail.create(name: "Sandflats Ridge", trail_system_id: ts8.id)
t140 = Trail.create(name: "Sandflats Trail", trail_system_id: ts8.id)
t141 = Trail.create(name: "Skink", trail_system_id: ts8.id)
t142 = Trail.create(name: "Soccer Mom", trail_system_id: ts8.id)
t143 = Trail.create(name: "Stupid Trail", trail_system_id: ts8.id)
t144 = Trail.create(name: "Tears of a Clown", trail_system_id: ts8.id)
t145 = Trail.create(name: "The Freeride Area/Push Trails", trail_system_id: ts8.id)
t146 = Trail.create(name: "The Nose", trail_system_id: ts8.id)
t147 = Trail.create(name: "Three Saws", trail_system_id: ts8.id)
t148 = Trail.create(name: "Treegina", trail_system_id: ts8.id)
t149 = Trail.create(name: "Upper Canaan", trail_system_id: ts8.id)
t150 = Trail.create(name: "UpperRidge Trail", trail_system_id: ts8.id)
t151 = Trail.create(name: "Vadal", trail_system_id: ts8.id)
t152 = Trail.create(name: "Viper", trail_system_id: ts8.id)
t153 = Trail.create(name: "Volkswagon", trail_system_id: ts8.id)
t154 = Trail.create(name: "Wayne's Trail", trail_system_id: ts8.id)
t155 = Trail.create(name: "Yellow Trail", trail_system_id: ts8.id)

ts9 = 
TrailSystem.create(
  name:"Blue Ridge School",
  lat: 38.2692,  
   long: -78.5533,
   street: "31-1 Neve Dr",
   city: "Dyke",
   state: "VA",
   zipcode: "22935",
   trail_map: "https://www.blueridgeschool.com/wp-content/uploads/2020/06/Blue-Ridge-School-Trail-Map_2020-1024x622.jpg",
   trail_forks_id: "23667"
)
t156 = Trail.create(name: "Access Trails", trail_system_id: ts9.id)
t157 = Trail.create(name: "Bear Hole", trail_system_id: ts9.id)
t158 = Trail.create(name: "Bryson Hollow", trail_system_id: ts9.id)
t159 = Trail.create(name: "Chesley Creek", trail_system_id: ts9.id)
t160 = Trail.create(name: "Copperhead", trail_system_id: ts9.id)
t161 = Trail.create(name: "Crawford Hollow", trail_system_id: ts9.id)
t162 = Trail.create(name: "Deane's", trail_system_id: ts9.id)
t163 = Trail.create(name: "Interpretive Trail", trail_system_id: ts9.id)
t164 = Trail.create(name: "McFarlane's", trail_system_id: ts9.id)
t165 = Trail.create(name: "Moonshine", trail_system_id: ts9.id)
t166 = Trail.create(name: "Rhino", trail_system_id: ts9.id)
t167 = Trail.create(name: "Ridgeline", trail_system_id: ts9.id)
t168 = Trail.create(name: "Senior Rock", trail_system_id: ts9.id)
t169 = Trail.create(name: "Twin Loake", trail_system_id: ts9.id)
t170 = Trail.create(name: "Orienteering Punch", trail_system_id: ts9.id)

ts10 = 
TrailSystem.create(
  name:"Western Slope",
  lat: 38.4300,   
   long: -78.7690,
   street: "4276 Happy Valley Rd",
   city: "Keezletown",
   state: "VA",
   zipcode: "22832",
   trail_map: "https://svbcoalition.org/wp-content/uploads/2018/04/2018-VAHS-Massanutten-Race-Map-600x388.jpg",
   trail_forks_id: "19618"
)

t157 = Trail.create(name: "Peak Ridge Trail", trail_system_id: ts10.id)
t158 = Trail.create(name: "Upper Laird's Downhill", trail_system_id: ts10.id)
t159 = Trail.create(name: "Kaylor's Knob Rdige Trail North", trail_system_id: ts10.id)
t160 = Trail.create(name: "Upper Hanenkahm", trail_system_id: ts10.id)
t161 = Trail.create(name: "Lower Hanenkahm", trail_system_id: ts10.id)
t162 = Trail.create(name: "Upper Ravine", trail_system_id: ts10.id)
t163 = Trail.create(name: "Lower Ravine", trail_system_id: ts10.id)
t164 = Trail.create(name: "Big Valley", trail_system_id: ts10.id)
t165 = Trail.create(name: "Route 81", trail_system_id: ts10.id)
t166 = Trail.create(name: "Cow", trail_system_id: ts10.id)
t167 = Trail.create(name: "Bailout", trail_system_id: ts10.id)
t168 = Trail.create(name: "Boundary", trail_system_id: ts10.id)
t169 = Trail.create(name: "Three Creeks", trail_system_id: ts10.id)
t170 = Trail.create(name: "Pond Trail", trail_system_id: ts10.id)
t171 = Trail.create(name: "Running Cedar", trail_system_id: ts10.id)
t172 = Trail.create(name: "Gravity Monkey", trail_system_id: ts10.id)
t173 = Trail.create(name: "Little Monkey", trail_system_id: ts10.id)
t174 = Trail.create(name: "Prologue Trail", trail_system_id: ts10.id)
t175 = Trail.create(name: "Redbud Ridge", trail_system_id: ts10.id)
t176 = Trail.create(name: "Kaylor's Knob Ridge Trail South", trail_system_id: ts10.id)
t177 = Trail.create(name: "Upper Homestead", trail_system_id: ts10.id)
t178 = Trail.create(name: "Lower Homestead", trail_system_id: ts10.id)
t179 = Trail.create(name: "Chimney Trail", trail_system_id: ts10.id)
t180 = Trail.create(name: "Old Barn", trail_system_id: ts10.id)
t181 = Trail.create(name: "Stash Trail", trail_system_id: ts10.id)
t182 = Trail.create(name: "Old Barn Connector", trail_system_id: ts10.id)
t183 = Trail.create(name: "Laird's Downhill", trail_system_id: ts10.id)
t184 = Trail.create(name: "Blooming Laurel", trail_system_id: ts10.id)
t185 = Trail.create(name: "The Pines", trail_system_id: ts10.id)
t186 = Trail.create(name: "Stair Steps", trail_system_id: ts10.id)
t187 = Trail.create(name: "Big Stump", trail_system_id: ts10.id)
t188 = Trail.create(name: "Big Valley Drop-in", trail_system_id: ts10.id)
t189 = Trail.create(name: "MBA Meadow", trail_system_id: ts10.id)
t190 = Trail.create(name: "Canaan Revisited", trail_system_id: ts10.id)
t191 = Trail.create(name: "Smoke Tree Lane", trail_system_id: ts10.id)
t192 = Trail.create(name: "Berm Trail", trail_system_id: ts10.id)
t193 = Trail.create(name: "2000 Hours (2K)", trail_system_id: ts10.id)
t194 = Trail.create(name: "Boyscout", trail_system_id: ts10.id)
t195 = Trail.create(name: "Lower Granny Bypass", trail_system_id: ts10.id)
t196 = Trail.create(name: "Laird's Nose", trail_system_id: ts10.id)
t197 = Trail.create(name: "Laird's Nostril", trail_system_id: ts10.id)
t198 = Trail.create(name: "Short Track", trail_system_id: ts10.id)
t199 = Trail.create(name: "Virginia '54", trail_system_id: ts10.id)
t200 = Trail.create(name: "Special K", trail_system_id: ts10.id)
t201 = Trail.create(name: "Secret Sauce", trail_system_id: ts10.id)

ts13 =
TrailSystem.create(
  name: "495 Jumps",
  lat: 38.8380, 
  long: -77.2197,
  street:"",
  city: "Annandale",
  state: "VA",
  zipcode: "22003",
  trail_map: "",
  trail_forks_id: "54089",
)

t202 = Trail.create(name: "495 Advanced Jump Line", trail_system_id: ts13.id)
t203 = Trail.create(name: "495 Advanced Set", trail_system_id: ts13.id)
t204 = Trail.create(name: "495 Dual Slalom Trail", trail_system_id: ts13.id)
t205 = Trail.create(name: "495 Expert Line", trail_system_id: ts13.id)
t206 = Trail.create(name: "495 Intermediate Line", trail_system_id: ts13.id)
t207 = Trail.create(name: "495 Jumps Access Trail", trail_system_id: ts13.id)
t208 = Trail.create(name: "Return Line", trail_system_id: ts13.id)

ts14 =
TrailSystem.create(
  name: "Andrew Leitch Park",
  lat: 38.6587,  
  long: -77.3730,
  street:"5301 Dale Blvd",
  city: "Dale City",
  state: "VA",
  zipcode: "22193",
  trail_map: "",
  trail_forks_id: "50201",
)

t209 = Trail.create(name: "Andrew Leitch Park Double Track Trail", trail_system_id: ts14.id)
t210 = Trail.create(name: "Hidden Gem - Andrew Leitch", trail_system_id: ts14.id)
t211 = Trail.create(name: "Hidden Gem Loop", trail_system_id: ts14.id)
t212 = Trail.create(name: "Hidden Gem Outer Loop South", trail_system_id: ts14.id)
t213 = Trail.create(name: "Neabsco Greenway - Princedale to Lindendale", trail_system_id: ts14.id)

ts15 =
TrailSystem.create(
  name: "Bull Run Occoquan (BROT)",
  lat: 38.8380, 
  long: -77.2197,
  street:"12619 Old Yates Ford Rd",
  city: "Clifton",
  state: "VA",
  zipcode: "20124",
  trail_map: "",
  trail_forks_id: "54367",
)

t214 = Trail.create(name: "Bull Run Occoquan Trail (BROT)", trail_system_id: ts15.id)

ts16 =
TrailSystem.create(
  name: "Conway Robinson State Forest",
  lat: 38.8034,   
  long: -77.5877,
  street:"12814 Lee Hwy",
  city: "Gainesville",
  state: "VA",
  zipcode: "20155",
  trail_map: "",
  trail_forks_id: "18350",
)

t215 = Trail.create(name: "Blue Trail", trail_system_id: ts16.id)
t216 = Trail.create(name: "Blue Trail Connector", trail_system_id: ts16.id)
t217 = Trail.create(name: "Bullrun Overlook", trail_system_id: ts16.id)
t218 = Trail.create(name: "Forest Road", trail_system_id: ts16.id)
t219 = Trail.create(name: "Old RR Bed", trail_system_id: ts16.id)
t220 = Trail.create(name: "Orange Trail", trail_system_id: ts16.id)
t221 = Trail.create(name: "Red Trail", trail_system_id: ts16.id)
t222 = Trail.create(name: "Wetland Way", trail_system_id: ts16.id)
t223 = Trail.create(name: "Yellow Trail", trail_system_id: ts16.id)

ts17 =
TrailSystem.create(
  name: "Fountainhead Regional Park",
  lat: 38.7249,    
  long: -77.3299,
  street:"Outlet",
  city: "Fairfax Station",
  state: "VA",
  zipcode: "22039",
  trail_map: "",
  trail_forks_id: "5639",
)

t224 = Trail.create(name: "Black Loop", trail_system_id: ts17.id)
t225 = Trail.create(name: "Blue Loop", trail_system_id: ts17.id)
t226 = Trail.create(name: "Bull Run Occoquan Trail (BROT)", trail_system_id: ts17.id)
t227 = Trail.create(name: "Connector", trail_system_id: ts17.id)
t228 = Trail.create(name: "Green Loop", trail_system_id: ts17.id)
t229 = Trail.create(name: "Loop 2 Technical", trail_system_id: ts17.id)
t230 = Trail.create(name: "Old Shockabilly", trail_system_id: ts17.id)
t231 = Trail.create(name: "Skills Area", trail_system_id: ts17.id)

ts18 =
TrailSystem.create(
  name: "Elizabeth Furnace",
  lat: 38.9349, 
  long: -78.3202,
  street:"11263-, 11621 Fort Valley Rd",
  city: "Fort Valley",
  state: "VA",
  zipcode: "22652",
  trail_map: "",
  trail_forks_id: "18982",
)

t232 = Trail.create(name: "Bear Wallow Spur", trail_system_id: ts18.id)
t233 = Trail.create(name: "Blue Wallow Trail", trail_system_id: ts18.id)
t234 = Trail.create(name: "Botts Trail", trail_system_id: ts18.id)
t235 = Trail.create(name: "Massanutten", trail_system_id: ts18.id)
t236 = Trail.create(name: "Meneka Peak", trail_system_id: ts18.id)
t237 = Trail.create(name: "Mine Gap Trail", trail_system_id: ts18.id)
t238 = Trail.create(name: "Mudhole Gap", trail_system_id: ts18.id)
t239 = Trail.create(name: "Sidewinder", trail_system_id: ts18.id)
t240 = Trail.create(name: "Signal Knob", trail_system_id: ts18.id)
t241 = Trail.create(name: "Tuscarora - Doll Ridge", trail_system_id: ts18.id)

ts19 =
TrailSystem.create(
  name: "James S. Long Regional Park",
  lat: 38.8496,  
  long: -77.6288,
  street:"4603 James Madison Hwy",
  city: "Haymarket",
  state: "VA",
  zipcode: "20169",
  trail_map: "",
  trail_forks_id: "54103",
)

t242 = Trail.create(name: "James S. Long Trail", trail_system_id: ts19.id)

ts20 =
TrailSystem.create(
  name: "Lake Accotink Park",
  lat: 38.7943,   
  long: -77.2151,
  street:"7500 Accotink Park Rd",
  city: "Springfield",
  state: "VA",
  zipcode: "22150",
  trail_map: "",
  trail_forks_id: "14652",
)

t242 = Trail.create(name: "Lake Accotink Loop", trail_system_id: ts20.id)

ts23 =
TrailSystem.create(
  name: "Mount Vernon Park",
  lat: 38.7692,     
  long: -77.0631,
  street:"6801 Fort Hunt Rd",
  city: "Alexandria",
  state: "VA",
  zipcode: "22307",
  trail_map: "",
  trail_forks_id: "18976",
)

t258 = Trail.create(name: "Access Trail", trail_system_id: ts23.id)
t259 = Trail.create(name: "Belle View Connector", trail_system_id: ts23.id)
t260 = Trail.create(name: "Connector", trail_system_id: ts23.id)
t261 = Trail.create(name: "Loop", trail_system_id: ts23.id)
t262 = Trail.create(name: "Parking Lot Connector", trail_system_id: ts23.id)
t263 = Trail.create(name: "South Loop", trail_system_id: ts23.id)
t264 = Trail.create(name: "The Zone", trail_system_id: ts23.id)
t265 = Trail.create(name: "Upper Loop", trail_system_id: ts23.id)

ts24 =
TrailSystem.create(
  name: "Shenandoah River State Park",
  lat: 38.8492,      
  long: -78.3073,
  street:"350 Daughter of Stars Dr",
  city: "Bentonville",
  state: "VA",
  zipcode: "22610",
  trail_map: "",
  trail_forks_id: "25016",
)

t266 = Trail.create(name: "Allen's Mountain", trail_system_id: ts24.id)
t267 = Trail.create(name: "Bear Bottom Loop", trail_system_id: ts24.id)
t268 = Trail.create(name: "Bear Bottom Loop Access", trail_system_id: ts24.id)
t269 = Trail.create(name: "Big Oak Trail", trail_system_id: ts24.id)
t270 = Trail.create(name: "Bluebell", trail_system_id: ts24.id)
t271 = Trail.create(name: "Cabin Connector Trail", trail_system_id: ts24.id)
t272 = Trail.create(name: "Campbell's Jump", trail_system_id: ts24.id)
t273 = Trail.create(name: "Campground Trail", trail_system_id: ts24.id)
t274 = Trail.create(name: "Cottonwood Trail", trail_system_id: ts24.id)
t275 = Trail.create(name: "Cottonwood Trail Access", trail_system_id: ts24.id)
t276 = Trail.create(name: "Cottonwood Trail Loop", trail_system_id: ts24.id)
t277 = Trail.create(name: "Culler's Trail", trail_system_id: ts24.id)
t278 = Trail.create(name: "Hemlock Hollow", trail_system_id: ts24.id)
t279 = Trail.create(name: "Overlook Trail", trail_system_id: ts24.id)
t280 = Trail.create(name: "Point Trail", trail_system_id: ts24.id)
t281 = Trail.create(name: "Redtail Ridge Trail", trail_system_id: ts24.id)
t282 = Trail.create(name: "River Trail", trail_system_id: ts24.id)
t283 = Trail.create(name: "Shale Barrens", trail_system_id: ts24.id)
t284 = Trail.create(name: "Tulip Poplar Trail", trail_system_id: ts24.id)
t285 = Trail.create(name: "Turkey Roost", trail_system_id: ts24.id)

ts25 =
TrailSystem.create(
  name: "Wakefield Park",
  lat: 38.8181,       
  long: -77.2246,
  street:"8100 VA-620",
  city: "Annandale",
  state: "VA",
  zipcode: "22003",
  trail_map: "",
  trail_forks_id: "14653",
)

t286 = Trail.create(name: "495 Trail", trail_system_id: ts25.id)
t287 = Trail.create(name: "Berm Ascent Trail", trail_system_id: ts25.id)
t288 = Trail.create(name: "Civil War Trench Trail", trail_system_id: ts25.id)
t289 = Trail.create(name: "Connector", trail_system_id: ts25.id)
t290 = Trail.create(name: "Gully Wash", trail_system_id: ts25.id)
t291 = Trail.create(name: "Hydra", trail_system_id: ts25.id)
t292 = Trail.create(name: "Interior", trail_system_id: ts25.id)
t293 = Trail.create(name: "Long Branch Stream Valley Trail", trail_system_id: ts25.id)
t294 = Trail.create(name: "Lost Island", trail_system_id: ts25.id)
t295 = Trail.create(name: "MTB Trail", trail_system_id: ts25.id)
t296 = Trail.create(name: "New Race Course Stream Valley Trail", trail_system_id: ts25.id)
t297 = Trail.create(name: "Power Station Ascent Hill", trail_system_id: ts25.id)
t298 = Trail.create(name: "Power Station Descent Hill", trail_system_id: ts25.id)
t299 = Trail.create(name: "Powerline Trail", trail_system_id: ts25.id)
t300 = Trail.create(name: "Rusted Truck", trail_system_id: ts25.id)
t301 = Trail.create(name: "Salamander", trail_system_id: ts25.id)
t302 = Trail.create(name: "Sound Wall Perimeter", trail_system_id: ts25.id)
t303 = Trail.create(name: "Soup Kitchen", trail_system_id: ts25.id)
t304 = Trail.create(name: "The Berms", trail_system_id: ts25.id)
t305 = Trail.create(name: "The Bowl Lower Entrance/Exit", trail_system_id: ts25.id)
t306 = Trail.create(name: "The Stream Valley - Non-Race Course Section", trail_system_id: ts25.id)
t307 = Trail.create(name: "The Stream Valley - Race Course", trail_system_id: ts25.id)
t308 = Trail.create(name: "Timid Woodland Creature", trail_system_id: ts25.id)
t309 = Trail.create(name: "Trailhead Spur", trail_system_id: ts25.id)
t310 = Trail.create(name: "Triton", trail_system_id: ts25.id)
t311 = Trail.create(name: "Wakefield Bowl - Pit Row", trail_system_id: ts25.id)

ts26 =
TrailSystem.create(
  name: "James River Park System",
  lat: 37.5300,        
  long: -77.4694,
  street:"",
  city: "Richmond",
  state: "VA",
  zipcode: "23220",
  trail_map: "",
  trail_forks_id: "5399",
)

t312 = Trail.create(name: "Access Trail", trail_system_id: ts26.id)
t313 = Trail.create(name: "Ancarrow's Landing", trail_system_id: ts26.id)
t314 = Trail.create(name: "Ancarrow's Landing Access", trail_system_id: ts26.id)
t315 = Trail.create(name: "Ancarrow's Access Trail", trail_system_id: ts26.id)
t316 = Trail.create(name: "Belle Isle - Wast", trail_system_id: ts26.id)
t317 = Trail.create(name: "Belle Isle East", trail_system_id: ts26.id)
t318 = Trail.create(name: "Brown Way", trail_system_id: ts26.id)
t319 = Trail.create(name: "Buttermilk East", trail_system_id: ts26.id)
t320 = Trail.create(name: "Buttermilk Heights", trail_system_id: ts26.id)
t321 = Trail.create(name: "Buttermilk Proper", trail_system_id: ts26.id)
t322 = Trail.create(name: "Buttermilk Proper Access", trail_system_id: ts26.id)
t323 = Trail.create(name: "Buttermilk to Southern Access", trail_system_id: ts26.id)
t324 = Trail.create(name: "Dogwood Dell Loop", trail_system_id: ts26.id)
t325 = Trail.create(name: "Dogwood Dell Loop Access", trail_system_id: ts26.id)
t326 = Trail.create(name: "Forest Hill Park", trail_system_id: ts26.id)
t327 = Trail.create(name: "Lost Garden", trail_system_id: ts26.id)
t328 = Trail.create(name: "Lost Trail", trail_system_id: ts26.id)
t329 = Trail.create(name: "North Bank", trail_system_id: ts26.id)
t330 = Trail.create(name: "Northbank Heights", trail_system_id: ts26.id)

ts27 =
TrailSystem.create(
  name: "Pocahontas State Park",
  lat: 37.4010,         
  long: -77.5551,
  street:"7298 Courthouse Rd",
  city: "Chesterfield",
  state: "VA",
  zipcode: "23832",
  trail_map: "",
  trail_forks_id: "6915",
)

t331 = Trail.create(name: "Access Trail", trail_system_id: ts27.id)
t332 = Trail.create(name: "Bell Lap", trail_system_id: ts27.id)
t333 = Trail.create(name: "Bell Lap Uphill", trail_system_id: ts27.id)
t334 = Trail.create(name: "Bellberry", trail_system_id: ts27.id)
t335 = Trail.create(name: "Blue Jay Way", trail_system_id: ts27.id)
t336 = Trail.create(name: "Blueberry Hill - Downhill", trail_system_id: ts27.id)
t337 = Trail.create(name: "Blueberry Hill - Uphill", trail_system_id: ts27.id)
t338 = Trail.create(name: "Box Turtle Bailout", trail_system_id: ts27.id)
t339 = Trail.create(name: "Box Turtle Trail", trail_system_id: ts27.id)
t340 = Trail.create(name: "Clark Forest Trail", trail_system_id: ts27.id)
t341 = Trail.create(name: "Connector", trail_system_id: ts27.id)
t342 = Trail.create(name: "Corkscrew", trail_system_id: ts27.id)
t343 = Trail.create(name: "Freight Line - Dual Slalom", trail_system_id: ts27.id)
t344 = Trail.create(name: "Gill Forest Trail", trail_system_id: ts27.id)
t345 = Trail.create(name: "JT Inner Loop", trail_system_id: ts27.id)
t346 = Trail.create(name: "JT Trail", trail_system_id: ts27.id)
t347 = Trail.create(name: "Lakeview 1", trail_system_id: ts27.id)
t348 = Trail.create(name: "Lakeview 3", trail_system_id: ts27.id)
t349 = Trail.create(name: "Lakeview Spur Trail", trail_system_id: ts27.id)
t350 = Trail.create(name: "Lakeview Too", trail_system_id: ts27.id)
t351 = Trail.create(name: "Little West Virginia", trail_system_id: ts27.id)
t352 = Trail.create(name: "Lost Spring", trail_system_id: ts27.id)
t353 = Trail.create(name: "LV3 Connector", trail_system_id: ts27.id)
t354 = Trail.create(name: "Millstone", trail_system_id: ts27.id)
t355 = Trail.create(name: "Millstone Jump Line", trail_system_id: ts27.id)
t356 = Trail.create(name: "Moonshine Run", trail_system_id: ts27.id)
t357 = Trail.create(name: "Moonshine Run Double Drop", trail_system_id: ts27.id)
t358 = Trail.create(name: "Morel Ravine", trail_system_id: ts27.id)
t359 = Trail.create(name: "Morgan Trail System Access", trail_system_id: ts27.id)
t360 = Trail.create(name: "Muddy Buddy", trail_system_id: ts27.id)
t361 = Trail.create(name: "Qualla Road Connector", trail_system_id: ts27.id)
t362 = Trail.create(name: "Roper", trail_system_id: ts27.id)
t363 = Trail.create(name: "SkinnyDoodle DH", trail_system_id: ts27.id)
t364 = Trail.create(name: "Sunsetter", trail_system_id: ts27.id)
t365 = Trail.create(name: "Tall Oaks Trail", trail_system_id: ts27.id)
t366 = Trail.create(name: "Taylor Forest Trail", trail_system_id: ts27.id)
t367 = Trail.create(name: "The Chute", trail_system_id: ts27.id)
t368 = Trail.create(name: "Timberdoodle DH", trail_system_id: ts27.id)
t369 = Trail.create(name: "Zero", trail_system_id: ts27.id)

ts28 =
TrailSystem.create(
  name: "Reddish Knob",
  lat: 38.4625,          
  long: -79.2417,
  street:"",
  city: "Briery Branch",
  state: "VA",
  zipcode: "22821",
  trail_map: "",
  trail_forks_id: "11351",
)

t331 = Trail.create(name: "Big Hollow Trail", trail_system_id: ts28.id)
t332 = Trail.create(name: "Blueberry Trail", trail_system_id: ts28.id)
t333 = Trail.create(name: "Bother Ridge Trail", trail_system_id: ts28.id)
t334 = Trail.create(name: "Cliff trail", trail_system_id: ts28.id)
t335 = Trail.create(name: "Deathstar", trail_system_id: ts28.id)
t336 = Trail.create(name: "Dog Graves Access Road", trail_system_id: ts28.id)
t337 = Trail.create(name: "Festival Trail", trail_system_id: ts28.id)
t338 = Trail.create(name: "Grooms Ridge", trail_system_id: ts28.id)
t339 = Trail.create(name: "Heartbreak DH", trail_system_id: ts28.id)
t340 = Trail.create(name: "Hidden Rocks", trail_system_id: ts28.id)
t341 = Trail.create(name: "Hone Quarry Ridge", trail_system_id: ts28.id)
t342 = Trail.create(name: "Lynn Trail", trail_system_id: ts28.id)
t343 = Trail.create(name: "Meadow Knob", trail_system_id: ts28.id)
t344 = Trail.create(name: "Mines Run Trail", trail_system_id: ts28.id)
t345 = Trail.create(name: "Mud Pond Gap", trail_system_id: ts28.id)
t346 = Trail.create(name: "Narrowback Trail - East", trail_system_id: ts28.id)
t347 = Trail.create(name: "Narrowback Trail - West", trail_system_id: ts28.id)
t348 = Trail.create(name: "Pond Knob", trail_system_id: ts28.id)
t349 = Trail.create(name: "Reddish Knob Trail", trail_system_id: ts28.id)
t350 = Trail.create(name: "Rocky Run Trail", trail_system_id: ts28.id)
t351 = Trail.create(name: "Shenandoah Mountain Trail", trail_system_id: ts28.id)
t352 = Trail.create(name: "Shenandoah Mtn North", trail_system_id: ts28.id)
t353 = Trail.create(name: "Slate Run Trail", trail_system_id: ts28.id)
t354 = Trail.create(name: "Slate Springs", trail_system_id: ts28.id)
t355 = Trail.create(name: "Tillman West", trail_system_id: ts28.id)
t356 = Trail.create(name: "Timber Ridge Trail", trail_system_id: ts28.id)
t357 = Trail.create(name: "Tower Trail", trail_system_id: ts28.id)
t358 = Trail.create(name: "Trail A", trail_system_id: ts28.id)
t359 = Trail.create(name: "Tree Fall Trail", trail_system_id: ts28.id)
t360 = Trail.create(name: "Wild Oak Trail", trail_system_id: ts28.id)
t361 = Trail.create(name: "Wolf Ridge Trail", trail_system_id: ts28.id)
t362 = Trail.create(name: "Bear Draft Trail", trail_system_id: ts28.id)
t363 = Trail.create(name: "Big Bald Knob", trail_system_id: ts28.id)
t364 = Trail.create(name: "Big Game", trail_system_id: ts28.id)
t365 = Trail.create(name: "Big Game (Lower)", trail_system_id: ts28.id)
t366 = Trail.create(name: "Braley", trail_system_id: ts28.id)
t367 = Trail.create(name: "Braley Pond Loop", trail_system_id: ts28.id)
t368 = Trail.create(name: "Bridge Hollow", trail_system_id: ts28.id)
t369 = Trail.create(name: "Chimeny Hollow", trail_system_id: ts28.id)
t331 = Trail.create(name: "Dowell's Draft", trail_system_id: ts28.id)
t332 = Trail.create(name: "Georgia Camp", trail_system_id: ts28.id)
t333 = Trail.create(name: "Grindstone Mountain Trail", trail_system_id: ts28.id)
t334 = Trail.create(name: "Hankey Mountain", trail_system_id: ts28.id)
t335 = Trail.create(name: "Hankey Mountain Trail", trail_system_id: ts28.id)
t336 = Trail.create(name: "Horse Trough Hollow", trail_system_id: ts28.id)
t337 = Trail.create(name: "Johnson Draft Trail", trail_system_id: ts28.id)
t338 = Trail.create(name: "Little Skidmore", trail_system_id: ts28.id)
t339 = Trail.create(name: "Lookout Mountain Trail", trail_system_id: ts28.id)
t340 = Trail.create(name: "Magic Moss Section of The Wild Oak Trail", trail_system_id: ts28.id)
t341 = Trail.create(name: "Ramseys Draft Trail", trail_system_id: ts28.id)
t342 = Trail.create(name: "Road Hollow", trail_system_id: ts28.id)
t343 = Trail.create(name: "Skidmore Fork", trail_system_id: ts28.id)
t344 = Trail.create(name: "Springhouse Ridge Trail", trail_system_id: ts28.id)
t345 = Trail.create(name: "Trimble Mountain Trail", trail_system_id: ts28.id)


epoch_time = Time.now.to_i
TrailSystem.all.each do |trail_system|
  response =
    HTTParty.get(
      "https://api.open-meteo.com/v1/forecast?latitude=#{trail_system.lat}&longitude=#{trail_system.long}&hourly=precipitation,soil_temperature_6cm&temperature_unit=fahrenheit&precipitation_unit=inch&timeformat=unixtime&timezone=America%2FNew_York&past_days=2",
    )
  i = 0
  response["hourly"]["time"].each do |time|
    if time < epoch_time
      WeatherData.create(
        trail_system_id: trail_system.id,
        precipitation_last_hour: response["hourly"]["precipitation"][i],
        hour: time,
        soil_temp: response["hourly"]["soil_temperature_6cm"][i]
      )
      i += 1
    end
  end
end
User.create(username: "Admin", first_name: "Admin", last_name: "Admin", email: "Admin@Admin.com", password: "Admin1314", admin: true)
User.create(username: "Toxicity1314", first_name: "Sean", last_name: "Welsh", email: "Sean@Welsh.com", password: "Hatebreed1314", admin: false)

puts "Seeding Finished"