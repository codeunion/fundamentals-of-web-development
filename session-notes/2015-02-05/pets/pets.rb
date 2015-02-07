require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, 'sqlite:animals.db')

class Pet
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
end

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  # get all the pets from the database
  @all_pets = Pet.all # SELECT * FROM pets;

  # respond with HTML showing all the pets
  erb :index
end

post '/create_pet' do
  # get pet name from request
  name = params["pet_name"]

  # build a new pet
  # and save it to the database
  pet = Pet.new(name: name)
  pet.save

  redirect('/')
end
