require 'data_mapper'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite:messages.db")

class Message
  include DataMapper::Resource
  property :id, Serial
  property :content, String
  property :created_at, DateTime

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
