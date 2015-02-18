require 'data_mapper'

DataMapper.setup(:default, 'sqlite:bloggy.db')

class Blog
  include DataMapper::Resource

  property :id, Serial
  property :title, String, required: true, unique: true
  property :content, Text, default: 'Write a blog post!'
  property :created_at, DateTime, required: true

  belongs_to :author, 'User'

  before :create do
    self.created_at = DateTime.now
  end
end

class User
  include DataMapper::Resource

  property :id, Serial
  property :username, String, required: true, unique: true

  has n, :blogs, parent_key: [:id], child_key: [:author_id]
end

DataMapper.finalize
DataMapper.auto_upgrade!
