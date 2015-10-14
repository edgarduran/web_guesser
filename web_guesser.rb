require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)

get '/' do
  guess = params[:guess]
  message = check_guess(guess)
  erb :index, :locals => {:number => NUMBER, :message => message}
end

def evaluate_guess(guess)
  if    guess >= NUMBER + 5
        message = "Your guess of #{guess} is way too high!!"
  elsif guess <= NUMBER - 5
        message = "Your guess of #{guess} is way too low!!"
  elsif guess > NUMBER
        message = "Your guess of #{guess} is too high!"
  elsif guess < NUMBER
        message = "Your guess of #{guess} is too low!"
  else  guess == NUMBER
        message ="The SECRET Number is #{NUMBER}.Your guess is Correct!!!"
  end
        message
end
