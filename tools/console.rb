require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

elli = Customer.new("Elli", "Shim")
jay = Customer.new("Jay", "Shim")
adam = Customer.new("Adam", "Kim")
elli2 = Customer.new("Elli", "Park")

rest1 = Restaurant.new("Shake Shack")
rest2 = Restaurant.new("McD")

rev1 = Review.new(jay, rest1)
rev2 = Review.new(jay, rest2)
rev3 = Review.new(adam, rest1)
rev4 = Review.new(elli, rest1)


pry.Start
