require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite:storms.db")

class City
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :population, Integer
  property :hipster, Boolean

  has n, :storms, :child_key => ['city_id']
  # explicity define primary/foreign key relationships
end

class Storm
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :date, DateTime
  property :city_id, Integer

  belongs_to :city
end

DataMapper.finalize()
DataMapper.auto_upgrade!()