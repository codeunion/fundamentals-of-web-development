# Variables

name = "john"
person = "victor lightfoot"
age = 45
smoker = false
places = [ "Paris", "London", "San Francisco" ]
puts name
puts person
puts person.reverse
puts smoker

# variable reassingment

name = "john"
puts name
person = "victor lightfoot"
puts person
person = name
puts person

# combined assignment

number = 4
number = number + 4
puts number
number = 4
puts number
puts number += 10
puts number


# fixnum vs float

puts 3 + 7
puts 5 - 8
puts 20 * 10
puts 8 / 4
puts 10**1
puts 10**3
puts 10 / 3
puts 1
puts 1.class

puts 1.5
puts 1.5.class

puts ( 1 / 1.5 )
puts ( 1 / 1.5 ).class
puts 21 / 4
puts 21 % 4 # % returns the remainder
puts 20 % 4
puts 10.to_f
puts -5.abs

# This calls "ceil" on 8.1
puts 8.1.ceil

num = 5.9
puts num.floor

# STRING

name = "john"
puts name
puts name.reverse
puts name
puts name.class

puts "Hello" * 5

# This is equivalent to:
# puts "123" + "123" + "123"
puts "123" * 3

puts 3 * "123" # this should throw an error.

first_name = "john"
last_name = "smith"
first_name + last_name
puts first_name

first_name = "john"
last_name = "smith"
first_name << last_name
puts first_name

first_name = "john"
last_name = "smith"
complete_name = "#{first} #{last}" # note the use of #{variable}
puts complete_name

messed_up_name = "j*o*h*n"
puts messed_up_name.sub("*", "")
puts messed_up_name
puts messed_up_name.gsub("*", "")
puts messed_up_name
name = messed_up_name.gsub("*", "")
puts name

# empty?, length, [0..1], [-1]
# zero indexing
person = "john dewey"
puts person[0]

#how to find things ?
really_messed_up_name = "johnfubardewey"
puts really_messed_up_name.match("fubar")

# split is useful for splitting all characters of a string into elements in an Array
person = "john dewey"
letters = person.split("")

letters.each do |letter|
  puts letter
end

puts letters.join("")
full_name = letters.join("")
puts full_name

# ARRAY

people = [ "john", "amy", "david", "michelle" ]
p people
numbers = [ 1,2,3,4,5 ]
p numbers
misc_stuff = [ [1,2,3,4], ["john", "amy", "michale", "nancy"], true, false, "person", nil ]
people = [ "john", "amy", "david", "michelle" ]
p people[0]
people = [ "john", "amy", "david", "michelle" ]
p people[0]
p people[1]
p people[2]
p people[-1]
p people[0..1]
p people.first
p people.last
p people.length
people = [ "john", "amy", "david", "michelle" ]
people.length.times do |n|
  p people[n]
end
people = [ "john", "amy", "david", "michelle" ]
people.length.times do |n|
  p people[-(n+1)]
end


# HASH

person = {:name => "michelle", :age => "30", :location => "San Francisco"}
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:eye_color]
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:name]
p person[:name] = "john"
p person[:name]
p person
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
p person[:eye_color]
person[:eye_color] = "blue"
p person[:eye_color]
p person
person = {:name => "michelle", :age => "30", :location => "San Francisco", :fav_colors => [ "blue", "red", "white"], :favorite_foods => [ "pbj", "krownuts", {:soda => ["pepsi", "coke"] } ] }
p person[:name]
p person[:fav_colors]
p person[:fav_colors].class
p person[:fav_colors].first
p person[:favorite_foods].last[:soda]
p person[:favorite_foods].last[:soda].first
person = {:name => "michelle", :age => "30", :location => "San Francisco"}
person.each do |key, value|
  puts key
  puts value
end
