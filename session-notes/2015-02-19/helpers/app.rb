require 'sinatra'

helpers do
  def current_user
    puts 'helper method'
    @user ||= params[:user_id]
  end
end

# def current_user
#   puts 'global method'
#   @user ||= params[:user_id]
# end
#
# current_user

get '/' do
  # erb("<%= current_user %>")
  # erb = "#{current_user}"
  current_user
end
