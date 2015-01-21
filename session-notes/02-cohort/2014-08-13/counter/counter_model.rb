require 'data_mapper'

DataMapper.setup(:default, "sqlite:counter.db")

class ClickTracker
  include DataMapper::Resource
  property :id, Serial
  property :name, String
end

DataMapper.finalize
DataMapper.auto_upgrade!