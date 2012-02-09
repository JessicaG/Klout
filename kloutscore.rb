require 'sinatra'
require 'klout'
require 'json'
k = Klout::API.new('wp4e3hxhbkktkyd45k59b9nk')

get '/' do
  erb :test
end

post '/' do
  content_type :json
  twitter_handle = params[:twitter_handle]
  k.klout(twitter_handle).to_json 

end 