require 'sinatra'

enable :sessions

helpers do
  def flash_get(key)
    value = session[key]
    session.delete(key)
    value
  end

  def flash_save(key, value)
    session[key] = value
  end
end

get '/' do
  message = flash_get(:message)

  if message
    "your message is #{message}"
  else
    "no message"
  end
end

get '/write' do
  message = params[:message]
  flash_save(:message, [1, 2, 3, message])

  redirect '/'
end
