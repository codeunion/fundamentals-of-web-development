require 'sinatra'
require 'json'

get '/' do
  erb :index
end

post '/ajax' do
  puts "I'm in /ajax"
  puts params

  {
    number: 1,
    color: 'green'
  }.to_json
end
