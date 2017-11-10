require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Erick","Camacho")
customer2 = Customer.new("Eric","Cantos")
customer1 = Customer.new("Erick","Jones")
restaurant1 = Restaurant.new("applebees")
restaurant2 = Restaurant.new("mcdonals")
restaurant2 = Restaurant.new("olivegarden")
review1 = Review.new(customer1,restaurant1)
review2 = Review.new(customer2,restaurant2)


Pry.start
