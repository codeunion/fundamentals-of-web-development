require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite:users.db")

class User
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :created_at, DateTime

  has n, :orders
end

# user has n orders

class Order
  include DataMapper::Resource
  property :id, Serial
  property :value, Float
  property :created_at, DateTime
  property :user_id, Integer

  belongs_to :user
end

DataMapper.finalize()
DataMapper.auto_upgrade!()