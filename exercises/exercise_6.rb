require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'Sven', last_name: 'Johansen', hourly_rate: 160)
@store1.employees.create(first_name: 'Ben', last_name: 'Ali', hourly_rate: 60)
@store1.employees.create(first_name: 'Jen', last_name: 'McDonald', hourly_rate: 60)

@store2.employees.create(first_name: 'Helga', last_name: 'Knutsen', hourly_rate: 6)
@store2.employees.create(first_name: 'Frida', last_name: 'Leifsson', hourly_rate: 61)
@store2.employees.create(first_name: 'Freydis', last_name: 'Helvig', hourly_rate: 6)
@store2.employees.create(first_name: 'Astrid', last_name: 'Voll', hourly_rate: 6)

puts @store1.employees.first.first_name