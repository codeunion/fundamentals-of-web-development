require 'sinatra'

require_relative 'data-model.rb'

get '/contacts' do
  @contacts = Contact.all

  erb :contact_index
end

get '/contacts/:contact_id' do
  id = params[:contact_id]

  @contact = Contact.get(id)

  erb :contact_show
end

get '/contacts/new' do
  erb :contacts_new # new contact form
end

post '/contacts/create' do
  contact = Contact.new

  contact.name = params[:name]
  contact.email = params[:email]

  contact.save

  redirect "/contacts/#{contact.id}"
end

get '/contacts/:contact_id/edit' do
  id = params[:contact_id]

  @contact = Contact.get(id)

  erb :contact_edit
end

post '/contacts/:contact_id/update' do
  id = params[:contact_id]

  contact = Contact.get(id)

  name = params[:name]
  email = params[:email]

  contact.update(:name => name, :email => email)

  redirect "/contacts/#{id}"
end

post '/contacts/:contact_id/destroy' do
  id = params[:contact_id]

  contact = Contact.get(id)

  contact.destroy

  redirect '/contacts'
end


# CODE FROM dex.rb used as starting point for sinatra app
#
# if __FILE__ == $PROGRAM_NAME
#   command = ARGV[0]
#   options = ARGV[1]
#
#   if command == "read"
#     # read/find a record
#     # $ ruby dex.rb read "Yolanda"
#     name = options
#     contact = Contact.first(name: name)
#
#     puts contact # is equal to =>
#     # print contact.to_s + "\n"
#   elsif command == "create"
#     # create a new record
#     # $ ruby dex.rb create "{name: 'Yolanda', email: 'yolanda@foo.com'}"
#     contact = Contact.new # create new contact object
#
#     properties = eval(options)
#
#     name = properties[:name]
#     email = properties[:email]
#
#     contact.name = name
#     contact.email = email
#
#     contact.save
#
#     puts "New contact created:"
#     puts contact
#   elsif command == "update"
#     # update a record
#     # $ ruby dex.rb update 11 "{name: 'Yolanda', email: 'yolanda@gmail.com'}"
#     id = ARGV[1]
#     properties = properties = eval(ARGV[2])
#
#     contact = Contact.get(id)
#
#     name = properties[:name]
#     email = properties[:email]
#
#     contact.update(:name => name, :email => email)
#
#     puts "Contact with id #{id} updated:"
#     puts contact
#   elsif command == "destroy"
#     # destroy a record
#     # $ ruby dex.rb destroy 11
#     id = ARGV[1]
#     contact = Contact.get(id)
#     contact.destroy
#
#     puts "Contact with id #{id} destroyed."
#   end
# end
