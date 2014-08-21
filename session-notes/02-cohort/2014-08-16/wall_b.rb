require 'sinatra'
require 'data_mapper'

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

  # id|created_by|title|description |likes|created_at
  # 1 |Katzy     |Yo   |A wall of yo|     |2014-08-16T13:41:07-07:00

  property :id,          Serial
  property :created_by,  String # If it will ALWAYS be shorter than 255 characters, use String
  property :title,       String
  property :description, Text   # If it can be longer than 255 characters (even potentially), use Text
  property :likes,       Integer
  property :created_at,  DateTime
end

DataMapper.finalize
DataMapper.auto_upgrade!

# These things live in the global namespace.
def some_cool_method
  puts "Cowabunga, dudee!"
end

SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR   = 60

# <form method="get" action="/walls">
# </form>

get "/walls" do
  # What is the significance of the @-sign?
  # SELECT * FROM walls;

  # The "@" sign denotes an "instance variable"
  # vs. no "@" sign denotes a "local variable"
  # Instance variables will be available inside the template.
  # Local variables are invisible to the template.
  # This is a weird convention, but it's the convention.

  @walls = Wall.all  # WTF IS THIS

  erb(:home)
end

# When we get a request that looks like (GET, /walls/new), run the following code
get "/walls/new" do
  @wall = Wall.new

  erb :new_wall
end




# <form method="post" action="/walls">
# </form>
# When we get a request that looks like (POST, /walls), run the following code
post "/walls" do
  wall_attributes = params["wall"]

  wall_attributes["created_at"] = DateTime.now

  # This is where we're inserting data into the database
  @wall = Wall.create(wall_attributes)

  if @wall.saved? # Did we supply all the data we were required to supply?
    redirect "/"
  else
    erb :new_wall
  end
end
