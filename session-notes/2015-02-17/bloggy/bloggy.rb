require './database.rb'

require 'sinatra'

enable :sessions

# Unfinished routes:
# - get /:username => list of all blogs for one user
# - get /:username/:blog_title => view a specific blog for a user
# - post /logout => sign out / remove session for user

# get / => list of all blogs
get '/' do
  puts "session[:user_id] is = #{session[:user_id].inspect}"
  @user = User.get(session[:user_id])

  erb :index
end

# get /login => show the login form
get '/login' do
  @errors = session[:login_errors]
  session.delete(:login_errors)

  erb :login
end

# post /login => authenticating a user
post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.first(:username => username)

  if user.password == password
    # if authentication is successful
    #   set session[:user_id] to users id
    session[:user_id] = user.id

    #   redirect to home page (display username)
    redirect '/'
  else
    # otherwise
    #   redirect to login with error
    session[:login_errors] = 'Invalid password.'
    redirect '/login'
  end
end
