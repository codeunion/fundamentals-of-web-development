require 'sinatra'
require 'data_mapper'
require 'pry'

set :views, settings.root + '/templates'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite:secrets.db")

SECRET_VOLCANO_KEY = "WAFFLES"

class Secret
  include DataMapper::Resource
  property :id, Serial
  property :content, String
end

DataMapper.finalize()
DataMapper.auto_upgrade!()

if Secret.all.length == 0
  5.times {|n| Secret.create(:content => "private information #{n}")}
end

get("/") do
  html = erb(:home)
  body(html)
end

post("/secrets") do
  if params[:key] == SECRET_VOLCANO_KEY
    @secrets = Secret.all
    html = erb(:show)
    body(html)
  else
    redirect("/")
  end
end
