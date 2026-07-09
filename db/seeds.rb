puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "020 7420 9320", category: "japanese" }
pizza_east = { name: "Pizza East", address: "56 Shoreditch High St, London E1 6PQ", phone_number: "020 7729 1888", category: "italian" }
epicure = { name: "Epicure", address: "112 Rue du Faubourg", phone_number: "01 53 43 43 40", category: "french" }
bristol = { name: "Le Bristol", address: "112 Rue du Faubourg", phone_number: "01 53 43 43 00", category: "french" }
fukuro = { name: "Fukuro", address: "Elgin St, Soho", phone_number: "+852 2333 4444", category: "japanese" }

[ dishoom, pizza_east, epicure, bristol, fukuro ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished! Database is seeded."
