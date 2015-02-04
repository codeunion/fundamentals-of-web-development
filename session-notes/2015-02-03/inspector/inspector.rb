require 'sinatra'

def creator
  "tanner"
end

get '/' do
  @title = "Welcome to Inspector"

  erb :index
end

get '/goodbye' do
  @title = "Goodbye!"

  erb :index
end

get '/users/:username' do
  @title = params[:username]

  erb :index
end

get '/search' do
  erb :index
end

get '/pages/:pagename/*/*' do
  erb :index
end

get '/reference/*' do
  erb :index
end
