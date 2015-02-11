require 'sinatra'

# list all the parks
get '/' do
  erb :index
end

# list of all permits
get '/admin/permits' do
  erb :'admin/permits'
end

# park detail page example: /yellowstone
get '/:park_name' do
  erb :park, locals: { :park_name => params[:park_name] }
end

# apply for a permit
post '/:park_name/register' do
  permit_info = params[:permit]

  hiker_name = permit_info[:hiker_name] || return "needs :hiker_name"
  hiker_phone = permit_info[:hiker_phone] || return "needs :hiker_phone"
  park_name = permit_info[:park_name] || return "needs :park_name"

  # permit = Permit.new(name: hiker_name, phone: hiker_phone, park: park_name)
  # permit.save
  redirect '/'
end
