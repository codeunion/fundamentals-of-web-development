```ruby
require 'sinatra'
require 'data_mapper'
require 'json'
require 'pry'

if ENV['RACK_ENV'] != "production"
  require 'dotenv'
  Dotenv.load '.env'
  DataMapper.setup(:default, "sqlite:wall.db")
end

if ENV['RACK_ENV'] == "production"
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end


class Wall


  include DataMapper::Resource
  property :id,          Serial
  property :created_by, String
  property :title, String
  property :description, Text
  property :likes, Integer
  property :created_at, DateTime

end

def show_params
  puts "\n"
  p params
  puts "\n"
end

DataMapper.finalize
DataMapper.auto_upgrade!



get "/" do
  @walls = Wall.all
  erb :home
end

# request response
# http GET to /walls/new
# what is the response?

get("/walls/new") do
  @wall = Wall.last
  # the last line of the block gets returned as a response to the browser
  # what data type has to be return to the browser
  erb(:new_wall)
end

# hypothesis a new wall gets created
# it is creating a new wall by running the file called new wall.
# request vs response

post "/walls" do
  show_params
  wall_attributes = params["wall"]
  wall_attributes["created_at"] = DateTime.now
  @wall = Wall.create(wall_attributes)
  local = "john"
  if @wall.saved?
    redirect("/") # what do we call this ? "/" it is the root
  else
    erb(:new_wall)
  end
end



get "walls/update" do
  puts "Which wall do you want to update?"
  erb :update
end

get "/walls/:id/update" do
  @wall = Wall.get(params[:id])
  erb :update_wall
end

put "/walls/:id" do
  @wall = Wall.get(params[:id])
  @wall.update(params[:wall])
  redirect "/"
end

delete "/walls/:id" do
  # delete the wall object
end
```
