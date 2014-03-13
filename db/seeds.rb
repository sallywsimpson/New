User.destroy_all
["Jeff", "Brian"].each do |name|
  u = User.new
  u.first_name = name
  u.password = "hockey"
  u.admin = "yes"
  u.save
end


product_catalog = [ { :name => "Garlic Shrimp",
                        :price => 11,
                        :image_url => 'http://graphics8.nytimes.com/images/2011/09/29/travel/29globe-prague-tapas/29globe-prague-tapas-blog480.jpg',
                        :description => "No poop in this tasty sea creature."
                      },
                      { :name => "Spanish Mussels",
                        :price => 13,
                        :image_url => "http://assets.kitchendaily.com/styles/large/s3/field/image/spanish-tapas-inspired-mussels.jpg",
                        :description => "When you think mussels you may not instantly think chickpeas, but the two are joined in tasteful union in this delicious, bistro-style dish. Comes with some crusty bread so you can sop up the sauce."
                      },
                      { :name => "Spanish Tortilla",
                        :price => 12,
                        :image_url => "http://assets.kitchendaily.com/styles/large/s3/field/image/spanish-tortilla.jpg",
                        :description => "Don't confuse this with the flour or corn tortillas you use to make wraps. A Spanish tortilla is a potato-and-egg omelet found on numerous menus throughout Spain. This recipe even lightens the traditionally oil-heavy dish."
                      },
                      { :name => "Chorizo Poached in Red Wine",
                        :price => 14,
                        :image_url => "http://assets.kitchendaily.com/styles/large/s3/field/image/chorizo-poached-in-red-wine_456X342.jpg",
                        :description => "Chorizo is a very traditional tapas dish, and this smoky Spanish sausage will definitely satisfy the manliest of cravings!"
                      },
                      { :name => "Leak and Mushroom Croquettes",
                        :price => 8,
                        :image_url => "http://assets.kitchendaily.com/styles/large/s3/field/image/leek-and-mushroom-croquettes_456X342.jpg",
                        :description => "You can try shiitake mushrooms in place of porcini to make the croquettes larger for a vegetarian main course."
                      }
                    ]

Item.destroy_all
product_catalog.each do |product_info|
  p = Item.new
  p.name = product_info[:name]
  p.price = product_info[:price]
  p.image_url = product_info[:image_url]
  p.description = product_info[:description]
  p.save
end


puts "Sweet!  Or is that savory?  In either case, there are now #{Item.count} recipes, or products, in your menu."


Reservation.destroy_all
["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
  r = Reservation.new
  r.day = day
  r.time = "6PM"
  r.save
end
["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
  r = Reservation.new
  r.day = day
  r.time = "7PM"
  r.save
end
["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
  r = Reservation.new
  r.day = day
  r.time = "8PM"
  r.save
end

puts "You've loaded  #{Reservation.count} reservations"
