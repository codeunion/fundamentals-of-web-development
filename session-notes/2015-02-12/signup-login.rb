require 'sinatra'

enable :sessions

get '/' do
  "welcome, #{session[:username]}"
end

get '/login' do

  erb :login
end

post '/login' do
  session[:username] = params[:username]
  session[:favorite_fruit] = "apples"

  redirect '/'
end
