#pulls in all code from Sinatra library, required fro all sinatra apps.
require 'sinatra'
require 'sinatra/reloader' if development?

# code block below is know as a route handler.
# starts with the HTTP verb get, and say the client should get the page with the URL of /hello
get '/hello' do
	"Hello Sinatra!"
end
	
get '/frank' do
	name = "Frank"
	"Hello #{name}"
end

get '/:name' do
	name = params[:name]
	"Hi there #{name}!"
end

get '/:one/:two/:three' do
	"first: #{params[:one]}, second: #{params[:two]}, 
	third: #{params[:three]}"
end

get '/what/time/is/it/in/:number/hours' do
	number = params[:number].to_i
	time = Time.now + number * 3600
	#%I= hour of day, %M=minute of hour, %p=meridian indicator(am/pm)
	"The time in #{number} hours will 
	be #{time.strftime('%I:%M%p')}"
end
