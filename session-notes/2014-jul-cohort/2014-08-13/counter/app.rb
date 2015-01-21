require 'sinatra'

# store it somehow
# use another variable

DataMapper.setup(:default, "sqlite:counter.db")

class ClickTracker
  include DataMapper::Resource
  property :id,          Serial
  property :purpose, String
  property :count, Integer
end

DataMapper.finalize
DataMapper.auto_upgrade!


def get_counts
  # File.read("./counts.txt").chomp.to_i
  ClickTracker.count()
end

def increment_counts count, purpose
  # new_count = get_counts + 1
  # File.write("./counts.txt", new_count)
  Counter.create(:count => count, :purpose => purpose)
end

get("/counts") do
  get_counts.to_s
end

get("/increment_counter") do
  increment_counts params[:count], params[:purpose]
  get_counts.to_s
end

get("/show_counts") do
  File.read("./counts.txt").to_s
end

get("/count") do
  number = File.read("./counts.txt").chomp.to_i
  incremented_number = number + 1
  File.write("./counts.txt", incremented_number)
  incremented_number.to_s
end

get("/dmv/show_people") do
  File.read("./people.txt")
end