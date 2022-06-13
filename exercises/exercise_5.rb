require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total = Store.sum(:annual_revenue)
puts "Total Revenue: #{total}"

average = total / Store.count
puts "Average Revenue: #{average}"

high_annual = Store.where('annual_revenue >= ?', 1000000).count
puts "Stores earning over 1M: #{high_annual}"