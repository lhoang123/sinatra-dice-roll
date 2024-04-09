# /dice.rb

require "sinatra"

get("/") do
  "Hello World"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
