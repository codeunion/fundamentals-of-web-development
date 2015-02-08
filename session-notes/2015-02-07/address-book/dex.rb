require_relative 'data-model.rb'

if __FILE__ == $PROGRAM_NAME
  command = ARGV[0]
  options = ARGV[1]

  if command == "read"
    # read/find a record
    # $ ruby dex.rb read "Yolanda"
    name = options
    contact = Contact.first(name: name)

    puts contact # is equal to =>
    # print contact.to_s + "\n"
  elsif command == "create"
    # create a new record
    # $ ruby dex.rb create "{name: 'Yolanda', email: 'yolanda@foo.com'}"
    contact = Contact.new # create new contact object

    properties = eval(options)

    name = properties[:name]
    email = properties[:email]

    contact.name = name
    contact.email = email

    contact.save

    puts "New contact created:"
    puts contact
  elsif command == "update"
    # update a record
    # $ ruby dex.rb update 11 "{name: 'Yolanda', email: 'yolanda@gmail.com'}"
    id = ARGV[1]
    properties = eval(ARGV[2])

    contact = Contact.get(id)

    name = properties[:name]
    email = properties[:email]

    contact.update(:name => name, :email => email)

    puts "Contact with id #{id} updated:"
    puts contact
  elsif command == "destroy"
    # destroy a record
    # $ ruby dex.rb destroy 11
    id = ARGV[1]
    contact = Contact.get(id)
    contact.destroy

    puts "Contact with id #{id} destroyed."
  end
end
