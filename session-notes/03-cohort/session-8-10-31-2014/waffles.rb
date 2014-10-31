require 'sinatra'
require 'data_mapper'

DataMapper::Logger.new(STDOUT, :debug)
DataMapper.setup(:default, "sqlite:waffles.db")

class Waffle
  include DataMapper::Resource
  property :id,          Serial
  property :description, String
  has n, :comments
end

class Comment
  include DataMapper::Resource
  property :id,          Serial
  property :content,     String
  belongs_to :waffle
end


DataMapper.finalize()
DataMapper.auto_upgrade!()

get("/") do
  # the root is programmer specified
end

get("/waffles") do
  # this would get, aka, show all the waffles
  waffles = Waffle.all
end

get("/waffles/:id") do
  # we query the db for a waffle of id = params[:id]
  waffle = Waffle.get(params[:id])
end

post("/waffles") do
  # post is what let's us know that we want to create the provide resource
  waffle = Waffle.create(params[:waffle])
end

put("/waffles/:id") do
  # put tells us that we want to edit a request resource
  waffle = Waffle.get(param[:id])
  waffle.update(params[:waffle])
end

delete("/waffles/:id") do
  waffle = Waffle.get(params[:id])
  waffle.destroy
end

# get("/")
# get("/waffles")
# get("/waffles/:id")
# post("/waffles")
# put("/waffles/:id")
# delete("/waffles/:id")

# get("/walls/delete/:id")
# get("/waffles/description/:id")

# the description property id is the same as the resource id

# get("/waffles/:waffle_id/comments")
# get("/waffles/:waffle_id/comments/:id")
# post("/waffles/:waffle_id/comments")

