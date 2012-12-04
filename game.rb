require 'sinatra'

# before we process a route,we'll set the response as
# plain text and set up an array of viable moves that
# a player (and the computer) can perform
before do
  content_type :txt
  @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
  @throws = @defeat.keys
end

get '/throw/:type' do
  player_throw = params[:type].to_sym

  if !@throws.include?(player_throw)
    halt 403, "You must throw one of the following: #{@throws}"
  end

  computer_throw = @throws.sample

  if player_throw == computer_throw
    "You tied with the computer. Try again!"
  elsif computer_throw == @defeat[player_throw]
    "Nicely done; #{player_throw} beats #{computer_throw}!"
  else
    "Ouch; #{computer_throw} beats #{player_throw}. Better luck next time!"
  end
end