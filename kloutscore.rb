require 'sinatra'

get '/' do
  'Hello world!'
end

get '/' do
klout git:(master) k = Klout::API.new('wp4e3hxhbkktkyd45k59b9nk')
k = Klout::API.new('wp4e3hxhbkktkyd45k59b9nk',{:format => 'xml',:secure=>true})

k.klout('dhh')
k.klout('dhh, rails')

k.show('dhh')
k.topics('dhh')

k.influencer_of('rails')
k.influenced_by('dhh, rails')
end