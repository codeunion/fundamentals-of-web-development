require 'data_mapper'
require 'bcrypt'

DataMapper::Logger.new($stdout, :debug)

DataMapper.setup(:default, 'sqlite:bloggy.db')

class Blog
  include DataMapper::Resource

  property :id, Serial
  property :title, String, required: true, unique: true
  property :content, Text, default: 'Write a blog post!'
  property :created_at, DateTime, required: true

  belongs_to :author, 'User'
end

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, required: true, unique: true

  # Set length to 60 because BCrypt creates password hashes that are 60
  # characters long, more than the default of 50
  property :password_hash, String, length: 60, required: true

  def password
    @password ||= BCrypt::Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  has n, :blogs, parent_key: [:id], child_key: [:author_id]
end

DataMapper.finalize
DataMapper.auto_upgrade!
