require_relative './craigslist.rb'

# TESTS ---------------------------------------

bikes_cat = Craigslist::Category.new(title: "bikes", url_keystring: 'bia')

p bikes_cat.valid?
p bikes_cat.save
p bikes_cat.errors

exit

p Craigslist::Category.all

my_bike = Craigslist::Posting.new(
            category: bikes_cat,
            title: 'My Mountain Bike for Sale',
            price: 350.00,
            make: 'Santa Cruz'
          )

# Test Craigslist::Posting attributes

p my_bike.category == bikes_cat
p my_bike.title == 'My Mountain Bike for Sale'
p my_bike.price == 350.00
p my_bike.make == 'Santa Cruz'

# Test Craigslist::Posting persistence

p Craigslist::Posting.count == 0
my_bike.save
p Craigslist::Posting.count == 1

# Test Craigslist.all returns all postings

bike_two = Craigslist::Posting.new(category: bikes_cat, title: 'Carbon Fibre Racing Bike', price: 500.00, make: 'Raleigh')
bike_two.save

p Craigslist::Posting.all.count == 2
p Craigslist::Posting.all.all? { |item| item.class == Craigslist::Posting }

# Search for a bike by make and price
car_cat = Craigslist::Category.new(title: "cars", url_keystring: 'car')
car_cat.save

car = Craigslist::Posting.new(category: car_cat, title: 'Volkswagen Rabbit', price: 1000.00, make: 'Volkswagen')
car.save

p bikes = Craigslist.bikes#(make: 'Santa Cruz', max_price: 400.00)
# => return an array of Craigslist::Posting objects

bikes.first.title == 'My Mountain Bike for Sale'
