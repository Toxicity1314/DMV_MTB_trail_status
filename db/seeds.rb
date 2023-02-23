# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ts1 = TrailSystem.create(name: "Fredericksburg Quarry", lat: 38.316550, long: -77.485650, address: "Heritage Trail, Fredericksburg, VA 22401", trail_map: "https://fredtrails.org/wp-content/uploads/2021/05/fredericksburg-quarry-007.jpg" )

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

i1 = Issue.create(trail_id: t14.id, issue:"treedown")