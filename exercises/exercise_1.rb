require_relative '../setup'
#Running without bundle exec may run the wrong version of ruby or it may use the correct version of ruby but with incorrect gem versions.
puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
burnaby.save

richmond = Store.create(name: "Richmond", annual_revenue: 126000, mens_apparel: false, womens_apparel: true)
richmond.save

gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
gastown.save

puts "There are #{Store.count(:all)} Stores!"