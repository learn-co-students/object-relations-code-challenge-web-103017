require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


jack = Customer.new('Jack', 'Luuu')
sally = Customer.new('Sally', 'Woo')
chipotle = Restaurant.new('chiptole')
mcdonald = Restaurant.new('mcdonald')
review1 = Review.new("yummmm")
review1 = Review.new("delishhh")

binding.pry

review1
