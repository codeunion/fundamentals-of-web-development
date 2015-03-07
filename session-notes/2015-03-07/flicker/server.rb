require 'data_mapper'
require 'sinatra'

DataMapper.setup(:default, ENV['DATABASE_URL'])

class Photo
  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true
  property :src, String
end

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  @photos = Photo.all
  
  erb :index
end
