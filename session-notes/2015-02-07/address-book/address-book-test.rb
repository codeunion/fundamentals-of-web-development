require_relative 'data-model.rb'

# --------
#
# A use case script

# TESTING CREATE

# Contact.destroy # start with a blank slate

# p Contact.count == 0 # before doing anything, should not have any contacts in db

friend = Contact.new # create new contact object

# assign values to this contact
friend.name = "Lucy"
friend.email = "lucy@friends.io"
friend.phone = "555-218-2812"

# save friend to the database
friend.save

p Contact.count == 1 # after saving, we should have one contact in the db

# TEST READ

lucy = Contact.first(:email => "lucy@friends.io")

p lucy.name == "Lucy"
p lucy.phone == "555-218-2812"

# TEST UPDATE

lucy = Contact.first(email: "lucy@friends.io")

# lucy.update(:name => "Tom", :phone => "123-428-2815")
# is equivalent
lucy.name = "Tom"
lucy.phone = "123-428-2815"
lucy.save

tom = Contact.first(email: "lucy@friends.io")

p tom.name == "Tom"
p tom.phone == "123-428-2815"

# TEST DELETE

count_before = Contact.count

lucy.destroy

# p (Contact.count == count_before - 1)
