# this is an address book app
#
# it stores contacts and their contact details
#
# we should be able to create new contacts, find existing contacts, update them
# and delete them

# Contact
# name: string required
# email: string unique
# birthday: date
# phone: string

require 'data_mapper'

# If you want the logs displayed you have to do this before the call to setup
DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, 'sqlite:address-book.db')

class Contact
  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true
  property :email, String, unique: true
  property :birthday, Date
  property :phone, String

  def to_s
    "#{id} - #{name} : [#{email}, #{phone}]"
  end
end

DataMapper.finalize # run validations on the models defined
DataMapper.auto_upgrade!
