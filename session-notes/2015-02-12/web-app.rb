require 'sinatra'

get '/home' do
  
  @quotes = find_quotes("Ada Lovelace")

  # view/index
  # <% @quotes.each do |quote| %>
  #   <%= quote %>
  erb :index
end
