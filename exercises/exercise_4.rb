require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
surrey.save

whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
whistler.save

yaletown = Store.create(name: "yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
yaletown.save

puts "There are #{Store.count(:all)} Stores!"

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts "Men's store: #{store.name} #{store.annual_revenue}"
end

@womens_stores = Store.where('annual_revenue < ?', 1_000_000).where(womens_apparel: true)
@womens_stores.each do |store|
  puts "Women's store: #{store.name} #{store.annual_revenue}"
end