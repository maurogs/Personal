require 'sinatra'
require 'sinatra/reloader' if development?

set :port, 3000
set :bind, '0.0.0.0'

get '/' do
	@movie = ["title1", "title2"]
	'hi'
	erb :index
end

post '/target_url' do
	@sent = params
	erb :target
end

get '/result' do
	@result = params
	erb :result
	"How are you? #{params}"
end
