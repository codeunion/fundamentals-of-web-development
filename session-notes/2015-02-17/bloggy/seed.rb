require './database.rb'

require 'faker'

User.destroy
Blog.destroy

User.raise_on_save_failure = true
Blog.raise_on_save_failure = true

u = User.new(username: 'admin', password: 'admin')
u.save

users = [
  User.create(username: Faker::Internet.user_name, password: 'apples'),
  User.create(username: Faker::Internet.user_name, password: 'apples'),
  User.create(username: Faker::Internet.user_name, password: 'gadpaoineapoidnfapoindpoiandfpid'),
]

blogs = []

10.times do
  blog = Blog.create(
    title: Faker::Lorem.words(6).join(' '),
    content: Faker::Lorem.paragraph(rand(10)),
    author: users.sample,
    created_at: DateTime.now,
  )
end
