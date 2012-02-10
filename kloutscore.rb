require 'sinatra'
require 'klout'
require 'json'

k = Klout::API.new('wp4e3hxhbkktkyd45k59b9nk')

get '/' do
  erb :test
end

post '/' do
  
  
  #k.show(twitter_handle).to_json 
  #k.topics(twitter_handle).to_json 

  #k.influencer_of(twitter_handle).to_json 
  #k.influenced_by(twitter_handle).to_json 
  
  #if params twitter_handle is empty, execute file upload
   
  unless params[:file] && (tmpfile = params[:file][:tempfile]) && (name = params[:file][:filename])
    twitter_handle = params[:twitter_handle] 
     @score = JSON.parse(k.klout(twitter_handle).to_json)
     return erb :score, {:locals => @score}
  end
  contents = tmpfile.read
  #ruby for inserting commas between names, send to klout API then to output. 
  
 
end 