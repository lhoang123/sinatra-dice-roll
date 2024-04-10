# /dice.rb

require "sinatra"

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  @rolls = []
  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:two_six)
end 


get("/dice/2/10") do
  first_dice = rand(1..10)
  second_dice = rand(1..10)

  sum = first_dice + second_dice

  @outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}."

  erb(:two_ten)
end 

get("/dice/4/4") do
first_dice = rand(1..4)
second_dice = rand (1..4)
third_dice = rand(1..4)
sum = first_dice + second_dice + third_dice

@outcome = "You rolled a #{first_dice} and a #{second_dice} and a #{third_dice} for a total of #{sum}."

erb(:four_four)
end 

get("/dice/100/6") do
  @rolls = []

  100.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:one_hundred_six)
end

require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

# /dice.rb
	
get("/") do
  erb(:elephant)
end
