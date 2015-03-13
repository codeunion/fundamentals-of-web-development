require 'data_mapper'

DataMapper.setup(:default, 'sqlite:alarmist.db')

class Alarm
  include DataMapper::Resource

  property :id, Serial
  property :area, String, required: true
  property :engaged, Boolean, required: true, default: false
end

DataMapper.finalize
DataMapper.auto_upgrade!
