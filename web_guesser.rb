require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  evaluation = evaluate_guess(guess)
  erb :index, :locals => {:number => NUMBER, :evaluation => evaluation }
end

def evaluate_guess(guess)
  if guess > NUMBER
    evaluation = "Too High!"
  elsif guess < NUMBER
    evaluation = "Too Low!"
  else
    evaluation ="You got it!"
  end
end
