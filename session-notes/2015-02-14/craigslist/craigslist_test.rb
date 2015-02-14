require_relative './craigslist.rb'

# TESTS ---------------------------------------

my_bike = Craigslist::Posting.new(
            category: 'bikes',
            title: 'My Mountain Bike for Sale',
            price: 350.00,
            make: 'Santa Cruz'
          )

# Test Craigslist::Posting attributes

p my_bike.category == 'bikes'
p my_bike.title == 'My Mountain Bike for Sale'
p my_bike.price == 350.00
p my_bike.make == 'Santa Cruz'

# Test Craigslist::Posting persistence

p Craigslist.all.count == 0
my_bike.save
p Craigslist.all.count == 1

# Test Craigslist.all returns all postings

bike_two = Craigslist::Posting.new(category: 'bikes', title: 'Carbon Fibre Racing Bike', price: 500.00, make: 'Raleigh')
bike_two.save

p Craigslist.all.count == 2
p Craigslist.all.all? { |item| item.class == Craigslist::Posting }

# Search for a bike by make and price
car = Craigslist::Posting.new(category: 'cars', title: 'Volkswagen Rabbit', price: 1000.00, make: 'Volkswagen')
car.save

bikes = Craigslist.bikes(make: 'Santa Cruz', max_price: 400.00)
# => return an array of Craigslist::Posting objects

bikes.first.title == 'My Mountain Bike for Sale'
