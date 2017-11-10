require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

snake = Customer.new("Jake", "MacNaughton")
walters = Restaurant.new("Walter's")
snake.add_review(walters, "GREAT HOT DOGS!!")

jerry = Customer.new("Jerry", "Garcia")
faux_jerry = Customer.new("Jerry", "Dart")

five_guys = Restaurant.new("5 Guys Burger & Fries")
jerry.add_review(five_guys, "I wish they had these around when I was still alive")

Pry.start
