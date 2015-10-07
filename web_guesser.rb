require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  evaluation = evaluate_guess(guess)
  erb :index, :locals => {:number => NUMBER, :evaluation => evaluation }
end

def evaluate_guess(guess)
  if    guess >= NUMBER + 5
        evaluation = "Your guess of #{guess} is way too high!!"
  elsif guess <= NUMBER - 5
        evaluation = "Your guess of #{guess} is way too low!!"
  elsif guess > NUMBER
        evaluation = "Your guess of #{guess} is too high!"
  elsif guess < NUMBER
        evaluation = "Your guess of #{guess} is too low!"
  else  guess == NUMBER
        evaluation ="The SECRET Number is #{NUMBER}.Your guess is Correct!!!"
  end
        evaluation
end
