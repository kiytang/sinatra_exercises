require 'sinatra'

get '/bet/:stake/on/:number' do
	stake = params[:stake].to_i
	number = params[:number].to_i
	# generate a random number between one and six using Ruby’s rand method
	roll = rand(6) + 1
	if number == roll
		"It landed on #{roll}. Well done, you win #{6*stake} chips"
	else
		"It landed on #{roll}. You lose your stake of #{stake} chips"
	end
end	