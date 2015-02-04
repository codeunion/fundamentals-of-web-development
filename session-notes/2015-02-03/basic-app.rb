require 'sinatra'

# send GET to /fruit/bananas

get '/home' do
  @message = "Welcome!"

  @message
end

get '/fruit/bananas' do
  "this is bananas"
end

get '/fruit/:fruit_name' do
  "Page to buy #{params[:fruit_name]}"
end

# get '/*' do
#   "WILDCARD"
# end
