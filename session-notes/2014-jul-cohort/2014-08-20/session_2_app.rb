require 'sinatra'
require 'pry'
require 'data_mapper'

def show_params
  puts "\n"
  p params
  puts "\n"
end

DataMapper.setup(:default, "sqlite:messages.db")


class Message
  include DataMapper::Resource

  property :id, Serial
  property :status, String

  belongs_to :user
end

class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :messages
end

DataMapper.finalize
DataMapper.auto_upgrade!


get("/messages/new") do
  erb :new_message
end

get("/users/:id/messages") do
  user = User.get(params[:id])
  @messages = user.messages
  erb :all_messages
end

post("/messages") do
  show_params
  new_message = params[:message]
  Message.create(new_message)
  redirect("/")
end

get("/") do
  @messages = Message.all
  erb :all_messages
end


# get("/get_min") do
#   erb :get_min
# end

# get("/min") do
#   numbers = []
#   params[:list].split(" ").each do |item|
#     numbers << item.to_i
#   end
#   result = min(numbers)
#   "<h1>#{result.to_s}</h1>"
# end

# def min(list)
#   min_so_far = list[0]
#   list.each do |item|
#     if item < min_so_far
#       min_so_far = item
#     end
#   end
#   min_so_far
# end



# get("/bottles/:quantity") do
#   total_bottles = params[:quantity].to_i
#   bottles(total_bottles).join
# end

# def bottles(start_number)
#   message = []
#   start_number.downto(2) do |i|
#     message.push "<span class='quantity'>#{i}</span> bottles of beer on the wall, #{i} bottles of beer.\nTake one down, pass it around, "
#     if i > 2
#       message.push "#{i-1} bottles of beer on the wall!"
#     elsif i < 2
#       message.push bottle(i)
#     end
#   end
#   message
# end

# def bottle(number)
#   "#{number} bottle of beer on the wall! #{number} bottle of beer on the wall, #{number} bottle of beer.\n"
#   "Take one down, pass it around, no more bottles of beer on the wall!."
# end
