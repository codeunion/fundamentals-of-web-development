# Concept Work

# how to go from left to right in an array without using a special ruby method

people = ["person0", "person1", "person2", "person3", "person4", "person5", "person6", "person7", "person8", "person9"]

# what is an array ?
# what is it used for ?
# how do we access it ?
# what are the things inside it ?

# left to right
4.times do |n|
  puts people[n]
end

# right to left
4.times do |n|
  puts people[people.length - n -1]
end

# multi line string
<<-DOC
asdlfkjald;fkj
asdflkjad;flkjasfd
asdfkljas;ldfkjas;ldfd
ad;lfkjas;dlfkjasd;ldfkjasad;flunk("")
akdlfjhasklfjhaskdf
DOC

list = [1 , 2, 3, 4, 3, 3, 5]
item_to_count = 3

counter = 0
list.each do |e|
  if e == item_to_count
    counter += 1
  end
end
counter

# what does changing the operator do for us?
# what is an operator?

(1..5).each do |n|
  # what do we have access to here?
end
