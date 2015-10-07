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
        evaluation = "way too high!!"
  elsif guess <= NUMBER - 5
        evaluation = "way too low!!"
  elsif guess > NUMBER
        evaluation = "too high!"
  elsif guess < NUMBER
        evaluation = "too low!"
  else
        evaluation ="Correct!"
  end
        evaluation
end
