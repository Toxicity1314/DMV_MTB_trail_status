# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# Comment.delete_all
# Issue.delete_all
# RainTotal.delete_all
# Trail.delete_all
# User.delete_all
# TrailSystem.delete_all
# puts "Seeding Data"
# ts1 =
#   TrailSystem.create(
#     name: "Fredericksburg Quarry",
#     lat: 38.3165,
#     long: -77.4856,
#     address: "Heritage Trail, Fredericksburg, VA 22401",
#     trail_map:
#       "https://fredtrails.org/wp-content/uploads/2021/05/fredericksburg-quarry-007.jpg",
#     trail_forks_id: "14672",
#   )

# t1 = Trail.create(name: "Beach Trail", trail_system_id: ts1.id)
# t2 = Trail.create(name: "Big Bill Trail", trail_system_id: ts1.id)
# t3 = Trail.create(name: "Dishwasher Trail", trail_system_id: ts1.id)
# t4 = Trail.create(name: "Epiphany Trail", trail_system_id: ts1.id)
# t5 = Trail.create(name: "Fall Quarry Trail", trail_system_id: ts1.id)
# t6 = Trail.create(name: "Gratitude Trail", trail_system_id: ts1.id)
# t7 = Trail.create(name: "Monolith Trail", trail_system_id: ts1.id)
# t8 = Trail.create(name: "Naysayer Trail", trail_system_id: ts1.id)
# t9 = Trail.create(name: "Oboy Loop", trail_system_id: ts1.id)
# t10 = Trail.create(name: "Owl Loop", trail_system_id: ts1.id)
# t11 = Trail.create(name: "Pins and Needles Trail", trail_system_id: ts1.id)
# t12 = Trail.create(name: "Pool Pass East Trail", trail_system_id: ts1.id)
# t13 = Trail.create(name: "Pool Pass West Trail", trail_system_id: ts1.id)
# t14 = Trail.create(name: "Ridgeline Trail", trail_system_id: ts1.id)
# t15 = Trail.create(name: "Scout Trail", trail_system_id: ts1.id)
# t16 = Trail.create(name: "Sunshine Trail", trail_system_id: ts1.id)
# t17 = Trail.create(name: "USGS Trail", trail_system_id: ts1.id)

# i1 = Issue.create(trail_id: t14.id, issue: "treedown")

# ts2 =
#   TrailSystem.create(
#     name: "Motts Run Reservoir",
#     lat: 38.3193,
#     long: -77.5537,
#     address: "Motts Run Access Rd, Fredericksburg, VA 22407",
#     trail_map:
#       "https://fredtrails.org/wp-content/uploads/2021/12/motts_trail_map_ed005.png",
#     trail_forks_id: "21189",
#   )

# t18 = Trail.create(name: "Duff Green Trail", trail_system_id: ts2.id)
# t19 = Trail.create(name: "Olde Towne Trail", trail_system_id: ts2.id)
# t20 = Trail.create(name: "Reservoir Trail", trail_system_id: ts2.id)
# t21 = Trail.create(name: "Rock Mine Trail", trail_system_id: ts2.id)
# t22 = Trail.create(name: "Snuffleupagus Trail", trail_system_id: ts2.id)
# t23 = Trail.create(name: "Trench Hill Trail", trail_system_id: ts2.id)

# ts3 =
#   TrailSystem.create(
#     name: "Locust Shade Park",
#     lat: 38.5323,
#     long: -77.3531,
#     address: "Locust Shade Triangle, VA 22172",
#     trail_map:
#       "https://cdn.shopify.com/s/files/1/0022/0269/7837/products/mockup-a2884992_1024x1024.jpg?v=1571015720",
#     trail_forks_id: "18974",
#   )

# t24 = Trail.create(name: "Beginner/Bolitas Trail", trail_system_id: ts3.id)
# t25 = Trail.create(name: "Paw Paw Alley", trail_system_id: ts3.id)
# t26 = Trail.create(name: "Col Du Shade", trail_system_id: ts3.id)
# t27 = Trail.create(name: "95th St.", trail_system_id: ts3.id)
# t28 =
#   Trail.create(name: "Blue Trail (Breaker Breaker)", trail_system_id: ts3.id)
# t29 = Trail.create(name: "Pink Trail (Tuttie Fruitti)", trail_system_id: ts3.id)
# t30 = Trail.create(name: "Palmer Trail", trail_system_id: ts3.id)
# t31 = Trail.create(name: "White Trail (Old Blue)", trail_system_id: ts3.id)
# t32 = Trail.create(name: "Gray Trail (Power)", trail_system_id: ts3.id)
# t33 = Trail.create(name: "Big Fallacy", trail_system_id: ts3.id)
# t34 = Trail.create(name: "Atomic", trail_system_id: ts3.id)

# ts4 =
#   TrailSystem.create(
#     name: "Lake Fairfax Park",
#     lat: 38.9516,
#     long: -77.3317,
#     address: "1400 Lake Fairfax Dr, Reston, VA 20190",
#     trail_map:
#       "https://images.singletracks.com/blog/wp-content/uploads/2009/10/Lake-Fairfax-375x250.png",
#     trail_forks_id: "9033",
#   )

# t35 = Trail.create(name: "Rails to River Trail", trail_system_id: ts4.id)
# t36 = Trail.create(name: "Chestnut Grove Connector", trail_system_id: ts4.id)
# t37 = Trail.create(name: "Upland Trail", trail_system_id: ts4.id)
# t38 = Trail.create(name: "South Side Trail", trail_system_id: ts4.id)
# t39 = Trail.create(name: "Bentana Park Connector", trail_system_id: ts4.id)
# t40 = Trail.create(name: "Hillside Trail", trail_system_id: ts4.id)
# t41 = Trail.create(name: "Pumptrack Connector", trail_system_id: ts4.id)
# t42 = Trail.create(name: "Sidetrack Trail", trail_system_id: ts4.id)
# t43 = Trail.create(name: "Campground Loop", trail_system_id: ts4.id)
# t44 = Trail.create(name: "Lakeside Trail", trail_system_id: ts4.id)
# t45 = Trail.create(name: "Amphitheater Trail", trail_system_id: ts4.id)
# t46 = Trail.create(name: "Cliff Hnager Trail", trail_system_id: ts4.id)
# t47 = Trail.create(name: "Hunter Mill Bypass", trail_system_id: ts4.id)
# t48 = Trail.create(name: "North Boundary Trail", trail_system_id: ts4.id)
# t49 = Trail.create(name: "Lakeside Trail", trail_system_id: ts4.id)

# ts5 =
#   TrailSystem.create(
#     name: "Laurel Hill",
#     lat: 38.7014,
#     long: -77.2457,
#     address: "Laurel Hill Mountain Bike Trails, Lorton, VA",
#     trail_map:
#       "http://1.bp.blogspot.com/_g0YuboCNUU8/S-hGmTiVngI/AAAAAAAAbas/l3ITh1NEojk/s1600/LaurelHillEquestTrails.gif",
#     trail_forks_id: "15985",
#   )

# t50 = Trail.create(name: "Cross County Trail", trail_system_id: ts5.id)
# t51 = Trail.create(name: "Giles Run Meadow Trail", trail_system_id: ts5.id)
# t52 = Trail.create(name: "Workhouse Trail", trail_system_id: ts5.id)
# t53 = Trail.create(name: "Slaughterhouse Loop", trail_system_id: ts5.id)
# t54 = Trail.create(name: "Dairy Barn Loop", trail_system_id: ts5.id)
# t55 = Trail.create(name: "Pasture Loop", trail_system_id: ts5.id)
# t56 = Trail.create(name: "Power Station Loop", trail_system_id: ts5.id)
# t57 = Trail.create(name: "Apple Orchard Loop", trail_system_id: ts5.id)

# ts6 =
#   TrailSystem.create(
#     name: "Meadowood Recreation Area",
#     lat: 38.6832,
#     long: -77.2091,
#     address: "10100 Gunston Rd, Lorton, VA 22079",
#     trail_map:
#       "https://www.findyourchesapeake.com/globalimages/place_maps/meadwoodMap.jpg",
#     trail_forks_id: "11275",
#   )

# t58 = Trail.create(name: "Belmont Connector", trail_system_id: ts6.id)
# t59 = Trail.create(name: "Boss", trail_system_id: ts6.id)
# t60 = Trail.create(name: "Connector", trail_system_id: ts6.id)
# t61 = Trail.create(name: "Giles Run", trail_system_id: ts6.id)
# t62 = Trail.create(name: "South Branch Access", trail_system_id: ts6.id)
# t63 = Trail.create(name: "South Branch Loop", trail_system_id: ts6.id)
# t64 = Trail.create(name: "South Branch Loop Alternate", trail_system_id: ts6.id)
# t65 = Trail.create(name: "Stinger Trail", trail_system_id: ts6.id)
# t66 = Trail.create(name: "Yard Sale", trail_system_id: ts6.id)

# ts7 = 
# TrailSystem.create(
#   name:"Carvins Cove",
#   lat: 37.3579,
#    long: -79.9920,
#    address: "Parking lot, 3097 Timberview Rd, Roanoke, VA 24019",
#    trail_map: "https://images.singletracks.com/blog/wp-content/uploads/2013/08/Cove-0-orig.jpg",
#    trail_forks_id: "3568"
# )
# t67 = Trail.create(name: "Happy Valley Trail", trail_system_id: ts7.id)
# t68 = Trail.create(name: "Brushy Mountain Trail", trail_system_id: ts7.id)
# t69 = Trail.create(name: "Horse Pen Trail", trail_system_id: ts7.id)
# t70 = Trail.create(name: "Tunnel Trail", trail_system_id: ts7.id)
# t71 = Trail.create(name: "Riley Circle", trail_system_id: ts7.id)
# t72 = Trail.create(name: "Bennett Springs Loop", trail_system_id: ts7.id)
# t73 = Trail.create(name: "Lower Comet", trail_system_id: ts7.id)
# t74 = Trail.create(name: "Kerncliff", trail_system_id: ts7.id)
# t75 = Trail.create(name: "Araminta", trail_system_id: ts7.id)
# t76 = Trail.create(name: "Songbird", trail_system_id: ts7.id)
# t77 = Trail.create(name: "Arrowhead", trail_system_id: ts7.id)
# t78 = Trail.create(name: "Enchanted Forest", trail_system_id: ts7.id)
# t79 = Trail.create(name: "Little Bell", trail_system_id: ts7.id)
# t80 = Trail.create(name: "Hotel", trail_system_id: ts7.id)
# t81 = Trail.create(name: "Tuck-A-Way", trail_system_id: ts7.id)
# t82 = Trail.create(name: "Schoolhouse", trail_system_id: ts7.id)
# t83 = Trail.create(name: "Sawmill Branch", trail_system_id: ts7.id)
# t84 = Trail.create(name: "Four Gorge", trail_system_id: ts7.id)
# t85 = Trail.create(name: "Four Gorge Extension", trail_system_id: ts7.id)
# t86 = Trail.create(name: "First Deck", trail_system_id: ts7.id)
# t87 = Trail.create(name: "Lakeside", trail_system_id: ts7.id)
# t88 = Trail.create(name: "Tinker Creek", trail_system_id: ts7.id)
# t89 = Trail.create(name: "Upper Coment", trail_system_id: ts7.id)
# t90 = Trail.create(name: "Jacobs Drop", trail_system_id: ts7.id)
# t91 = Trail.create(name: "The Trough", trail_system_id: ts7.id)
# t92 = Trail.create(name: "Buck", trail_system_id: ts7.id)
# t93 = Trail.create(name: "Hi-Dee-Hoe", trail_system_id: ts7.id)
# t94 = Trail.create(name: "OG", trail_system_id: ts7.id)
# t95 = Trail.create(name: "Old Hi-Dee-Hoe", trail_system_id: ts7.id)
# t96 = Trail.create(name: "Hemlock Tunnel", trail_system_id: ts7.id)
# t97 = Trail.create(name: "Gauntlet", trail_system_id: ts7.id)
# t98 = Trail.create(name: "Rattlin' Run", trail_system_id: ts7.id)
# t99 = Trail.create(name: "Trough Expert", trail_system_id: ts7.id)

# ts8 = 
# TrailSystem.create(
#   name:"Frederick Watershed",
#   lat: 39.5210, 
#    long: -77.4964,
#    address: "District 21, Tuscarora, Maryland 21702",
#    trail_map: "https://i.ytimg.com/vi/e8GnoBewjtM/sddefault.jpg",
#    trail_forks_id: "9607"
# )

# t100 = Trail.create(name: "Albatross", trail_system_id: ts8.id)
# t101 = Trail.create(name: "Blue Balls", trail_system_id: ts8.id)
# t102 = Trail.create(name: "Boundary Line", trail_system_id: ts8.id)
# t103 = Trail.create(name: "Buck Flats Trail", trail_system_id: ts8.id)
# t104 = Trail.create(name: "Capitol Hill", trail_system_id: ts8.id)
# t105 = Trail.create(name: "Catoctin Trail", trail_system_id: ts8.id)
# t106 = Trail.create(name: "Connector", trail_system_id: ts8.id)
# t107 = Trail.create(name: "Creampie", trail_system_id: ts8.id)
# t108 = Trail.create(name: "Dave's Trail", trail_system_id: ts8.id)
# t109 = Trail.create(name: "Death March", trail_system_id: ts8.id)
# t110 = Trail.create(name: "Double D", trail_system_id: ts8.id)
# t111 = Trail.create(name: "Evolution", trail_system_id: ts8.id)
# t112 = Trail.create(name: "Extended Death March", trail_system_id: ts8.id)
# t113 = Trail.create(name: "F2/New Berg", trail_system_id: ts8.id)
# t114 = Trail.create(name: "Fun House", trail_system_id: ts8.id)
# t115 = Trail.create(name: "Golf Ball", trail_system_id: ts8.id)
# t116 = Trail.create(name: "Green Eggs and Ham", trail_system_id: ts8.id)
# t117 = Trail.create(name: "Headless Hollow", trail_system_id: ts8.id)
# t118 = Trail.create(name: "Hoe", trail_system_id: ts8.id)
# t119 = Trail.create(name: "Huggy Bear", trail_system_id: ts8.id)
# t120 = Trail.create(name: "Iceberg", trail_system_id: ts8.id)
# t121 = Trail.create(name: "Key Hiway", trail_system_id: ts8.id)
# t122 = Trail.create(name: "Killer Bee", trail_system_id: ts8.id)
# t123 = Trail.create(name: "Knucklebuster", trail_system_id: ts8.id)
# t124 = Trail.create(name: "Kubla Khan", trail_system_id: ts8.id)
# t125 = Trail.create(name: "Lakeside connector", trail_system_id: ts8.id)
# t126 = Trail.create(name: "Lawnmower", trail_system_id: ts8.id)
# t127 = Trail.create(name: "Little Canaan", trail_system_id: ts8.id)
# t128 = Trail.create(name: "Lower Volkswagon", trail_system_id: ts8.id)
# t129 = Trail.create(name: "Mail Man", trail_system_id: ts8.id)
# t130 = Trail.create(name: "Moe's Cut", trail_system_id: ts8.id)
# t131 = Trail.create(name: "Mouse Trap", trail_system_id: ts8.id)
# t132 = Trail.create(name: "Not The Road Climb - Alternate", trail_system_id: ts8.id)
# t133 = Trail.create(name: "Pantyline", trail_system_id: ts8.id)
# t134 = Trail.create(name: "Pit", trail_system_id: ts8.id)
# t135 = Trail.create(name: "Red Bypass Trail", trail_system_id: ts8.id)
# t136 = Trail.create(name: "Salamander Connector", trail_system_id: ts8.id)
# t137 = Trail.create(name: "Salamander Trail", trail_system_id: ts8.id)
# t138 = Trail.create(name: "Sand Flats Trail", trail_system_id: ts8.id)
# t139 = Trail.create(name: "Sandflats Ridge", trail_system_id: ts8.id)
# t140 = Trail.create(name: "Sandflats Trail", trail_system_id: ts8.id)
# t141 = Trail.create(name: "Skink", trail_system_id: ts8.id)
# t142 = Trail.create(name: "Soccer Mom", trail_system_id: ts8.id)
# t143 = Trail.create(name: "Stupid Trail", trail_system_id: ts8.id)
# t144 = Trail.create(name: "Tears of a Clown", trail_system_id: ts8.id)
# t145 = Trail.create(name: "The Freeride Area/Push Trails", trail_system_id: ts8.id)
# t146 = Trail.create(name: "The Nose", trail_system_id: ts8.id)
# t147 = Trail.create(name: "Three Saws", trail_system_id: ts8.id)
# t148 = Trail.create(name: "Treegina", trail_system_id: ts8.id)
# t149 = Trail.create(name: "Upper Canaan", trail_system_id: ts8.id)
# t150 = Trail.create(name: "UpperRidge Trail", trail_system_id: ts8.id)
# t151 = Trail.create(name: "Vadal", trail_system_id: ts8.id)
# t152 = Trail.create(name: "Viper", trail_system_id: ts8.id)
# t153 = Trail.create(name: "Volkswagon", trail_system_id: ts8.id)
# t154 = Trail.create(name: "Wayne's Trail", trail_system_id: ts8.id)
# t155 = Trail.create(name: "Yellow Trail", trail_system_id: ts8.id)

# ts9 = 
# TrailSystem.create(
#   name:"Blue Ridge School",
#   lat: 38.2692,  
#    long: -78.5533,
#    address: "31-1 Neve Dr, Dyke, VA 22935",
#    trail_map: "https://www.blueridgeschool.com/wp-content/uploads/2020/06/Blue-Ridge-School-Trail-Map_2020-1024x622.jpg",
#    trail_forks_id: "23667"
# )
# t156 = Trail.create(name: "Access Trails", trail_system_id: ts9.id)
# t157 = Trail.create(name: "Bear Hole", trail_system_id: ts9.id)
# t158 = Trail.create(name: "Bryson Hollow", trail_system_id: ts9.id)
# t159 = Trail.create(name: "Chesley Creek", trail_system_id: ts9.id)
# t160 = Trail.create(name: "Copperhead", trail_system_id: ts9.id)
# t161 = Trail.create(name: "Crawford Hollow", trail_system_id: ts9.id)
# t162 = Trail.create(name: "Deane's", trail_system_id: ts9.id)
# t163 = Trail.create(name: "Interpretive Trail", trail_system_id: ts9.id)
# t164 = Trail.create(name: "McFarlane's", trail_system_id: ts9.id)
# t165 = Trail.create(name: "Moonshine", trail_system_id: ts9.id)
# t166 = Trail.create(name: "Rhino", trail_system_id: ts9.id)
# t167 = Trail.create(name: "Ridgeline", trail_system_id: ts9.id)
# t168 = Trail.create(name: "Senior Rock", trail_system_id: ts9.id)
# t169 = Trail.create(name: "Twin Loake", trail_system_id: ts9.id)
# t170 = Trail.create(name: "Orienteering Punch", trail_system_id: ts9.id)

# ts10 = 
# TrailSystem.create(
#   name:"Western Slope",
#   lat: 38.4300,   
#    long: -78.7690,
#    address: "4276 Happy Valley Rd, Keezletown, VA 22832",
#    trail_map: "https://svbcoalition.org/wp-content/uploads/2018/04/2018-VAHS-Massanutten-Race-Map-600x388.jpg",
#    trail_forks_id: "19618"
# )

# t157 = Trail.create(name: "Peak Ridge Trail", trail_system_id: ts10.id)
# t158 = Trail.create(name: "Upper Laird's Downhill", trail_system_id: ts10.id)
# t159 = Trail.create(name: "Kaylor's Knob Rdige Trail North", trail_system_id: ts10.id)
# t160 = Trail.create(name: "Upper Hanenkahm", trail_system_id: ts10.id)
# t161 = Trail.create(name: "Lower Hanenkahm", trail_system_id: ts10.id)
# t162 = Trail.create(name: "Upper Ravine", trail_system_id: ts10.id)
# t163 = Trail.create(name: "Lower Ravine", trail_system_id: ts10.id)
# t164 = Trail.create(name: "Big Valley", trail_system_id: ts10.id)
# t165 = Trail.create(name: "Route 81", trail_system_id: ts10.id)
# t166 = Trail.create(name: "Cow", trail_system_id: ts10.id)
# t167 = Trail.create(name: "Bailout", trail_system_id: ts10.id)
# t168 = Trail.create(name: "Boundary", trail_system_id: ts10.id)
# t169 = Trail.create(name: "Three Creeks", trail_system_id: ts10.id)
# t170 = Trail.create(name: "Pond Trail", trail_system_id: ts10.id)
# t171 = Trail.create(name: "Running Cedar", trail_system_id: ts10.id)
# t172 = Trail.create(name: "Gravity Monkey", trail_system_id: ts10.id)
# t173 = Trail.create(name: "Little Monkey", trail_system_id: ts10.id)
# t174 = Trail.create(name: "Prologue Trail", trail_system_id: ts10.id)
# t175 = Trail.create(name: "Redbud Ridge", trail_system_id: ts10.id)
# t176 = Trail.create(name: "Kaylor's Knob Ridge Trail South", trail_system_id: ts10.id)
# t177 = Trail.create(name: "Upper Homestead", trail_system_id: ts10.id)
# t178 = Trail.create(name: "Lower Homestead", trail_system_id: ts10.id)
# t179 = Trail.create(name: "Chimney Trail", trail_system_id: ts10.id)
# t180 = Trail.create(name: "Old Barn", trail_system_id: ts10.id)
# t181 = Trail.create(name: "Stash Trail", trail_system_id: ts10.id)
# t182 = Trail.create(name: "Old Barn Connector", trail_system_id: ts10.id)
# t183 = Trail.create(name: "Laird's Downhill", trail_system_id: ts10.id)
# t184 = Trail.create(name: "Blooming Laurel", trail_system_id: ts10.id)
# t185 = Trail.create(name: "The Pines", trail_system_id: ts10.id)
# t186 = Trail.create(name: "Stair Steps", trail_system_id: ts10.id)
# t187 = Trail.create(name: "Big Stump", trail_system_id: ts10.id)
# t188 = Trail.create(name: "Big Valley Drop-in", trail_system_id: ts10.id)
# t189 = Trail.create(name: "MBA Meadow", trail_system_id: ts10.id)
# t190 = Trail.create(name: "Canaan Revisited", trail_system_id: ts10.id)
# t191 = Trail.create(name: "Smoke Tree Lane", trail_system_id: ts10.id)
# t192 = Trail.create(name: "Berm Trail", trail_system_id: ts10.id)
# t193 = Trail.create(name: "2000 Hours (2K)", trail_system_id: ts10.id)
# t194 = Trail.create(name: "Boyscout", trail_system_id: ts10.id)
# t195 = Trail.create(name: "Lower Granny Bypass", trail_system_id: ts10.id)
# t196 = Trail.create(name: "Laird's Nose", trail_system_id: ts10.id)
# t197 = Trail.create(name: "Laird's Nostril", trail_system_id: ts10.id)
# t198 = Trail.create(name: "Short Track", trail_system_id: ts10.id)
# t199 = Trail.create(name: "Virginia '54", trail_system_id: ts10.id)
# t200 = Trail.create(name: "Special K", trail_system_id: ts10.id)
# t201 = Trail.create(name: "Secret Sauce", trail_system_id: ts10.id)

# ts11 = 
# TrailSystem.create(
#   name:"Lynn Woods",
#   lat: 42.4896,    
#    long: -70.9918,
#    address: "106 Pennybrook Rd, Lynn, MA 01905",
#    trail_map: "https://cos.ridewithgps.com/edited_images/standard/8635.jpg",
#    trail_forks_id: "10873"
# )

# ts12 = 
# TrailSystem.create(
#   name:"Teanaway Community Forest",
#   lat: 47.2560,     
#    long: -120.8930,
#    address: "1361 Ballard Rd W, Cle Elum, WA 98922",
#    trail_map: "https://www.mtbr.com/attachments/ace_8790-jpg.910155/",
#    trail_forks_id: "10000"
# )

# epoch_time = Time.now.to_i
# TrailSystem.all.each do |trail_system|
#   response =
#     HTTParty.get(
#       "https://api.open-meteo.com/v1/forecast?latitude=#{trail_system.lat}&longitude=#{trail_system.long}&hourly=precipitation&precipitation_unit=inch&timeformat=unixtime&timezone=America%2FNew_York&past_days=4",
#     )
#   i = 0
#   response["hourly"]["time"].each do |time|
#     if time < epoch_time
#       RainTotal.create(
#         trail_system_id: trail_system.id,
#         precipitation_last_hour: response["hourly"]["precipitation"][i],
#         hour: time,
#       )
#       i += 1
#     end
#   end
# end
# User.create(username: "Admin", first_name: "Admin", last_name: "Admin", email: "Admin@Admin.com", password: "Admin1314", admin: true)
# User.create(username: "Toxicity1314", first_name: "Sean", last_name: "Welsh", email: "Sean@Welsh.com", password: "Hatebreed1314", admin: false)

# puts "Seeding Finished"