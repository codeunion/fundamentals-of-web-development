require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite:users.db")

class User
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :created_at, DateTime

  has n, :messages
end


class Message
  include DataMapper::Resource
  property :id, Serial
  property :value, Float
  property :created_at, DateTime
  property :user_id, Integer

  belongs_to :user
  has n, :tags, :through => Resource
end

class Tag
  include DataMapper::Resource
  property :id, Serial
  property :type, String

  has n, :messages, :through => Resource
end
DataMapper.finalize()
DataMapper.auto_upgrade!()
