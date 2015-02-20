
helpers do
  def current_fruit
    @fruit = 'bananas'
  end

  def double_age
    age * 2
  end
end


get '/' do
  current_fruit # => bananas
  @fruit = 'apple'
  car = 'Buick'

  erb(:home, locals: { age: 2 }) # => '<html>....'
  erb :index # => '<html>....'
  erb :save_user # => '<html>....'
end

# ----- home.erb

# <%= @fruit %>
# <%= car %>
# <%= age %>
