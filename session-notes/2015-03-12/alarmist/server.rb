require 'sinatra'

require_relative './models.rb'

get '/' do
  @alarms = Alarm.all

  erb :index
end

get '/alarms' do
  @alarms = Alarm.all

  @alarms.to_json
end
