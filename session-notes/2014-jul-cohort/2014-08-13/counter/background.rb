require 'sinatra'
require 'pry'
require 'data_mapper'

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

def get_counts
  File.read("./counts.txt").chomp.to_i
end

def increment_counts count, purpose
  new_count = get_counts + 1
  File.write("./counts.txt", new_count)
end

# counter = 0
# counter += 1
# counter.to_s
# with an if statement we could save the number