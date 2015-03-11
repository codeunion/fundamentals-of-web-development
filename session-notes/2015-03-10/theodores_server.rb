require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

$incoming = []

get '/' do
  @received_messages = $incoming

  erb :index
end

get '/sms-quickstart' do
  # capturing incoming text data
  incoming_message = params[:Body]
  phone_number = params[:From]

  # persisting text data (DB would be much better, but this is GEFN)
  $incoming << { body: incoming_message, phone: phone_number }

  # building a TWIML response for the Twilio API
  twiml = Twilio::TwiML::Response.new do |r|
    r.Message do |message|
      message.Body "Hey Monkey. Thanks for the message!"
      message.MediaUrl "https://demo.twilio.com/owl.png"
    end
  end
  twiml.text
end
