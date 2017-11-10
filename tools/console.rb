require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

def test_functions
  rochellevi = Customer.new("rochel", "levi")
  adamkapelner = Customer.new("adam", "kapelner")
  adamj = Customer.new("adam", "j")
  adamk = Customer.new("adam", "kapelner")

  pizzahut = Restaurant.new("pizzahut")
  chickies = Restaurant.new("chickies")
  abigails = Restaurant.new("abigails")

  rochellevi.add_review(pizzahut, "5 stars")
  adamkapelner.add_review(pizzahut, "great")


  binding.pry
end

test_functions
Pry.start
