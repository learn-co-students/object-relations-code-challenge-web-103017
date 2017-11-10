require_relative '../config/environment.rb'
# require 'pry'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Priyam", "Sarma")
customer2 = Customer.new("Rochel", "Levi")
customer3 = Customer.new("Dan", "O'dea")
customer4 = Customer.new("Rochel", "Schneider")
customer5 = Customer.new("Rochel", "Levi")

restaurant1 = Restaurant.new("Pure Thai Cook House")
restaurant2 = Restaurant.new("Pio Pio")
restaurant3 = Restaurant.new("Jean Georges")

customer1.add_review(restaurant1, "Is Super awesome, great thai food")
customer1.add_review(restaurant2, "Is Super awesome, great peruvian chicken")
customer1.add_review(restaurant3, "Great food, great service, but uber expensive")
customer2.add_review(restaurant3, "Too expensive, I am cheap!")
customer3.add_review(restaurant2, "Loved the chicken, woudl go back")
customer2.add_review(restaurant1, "The thai was great, they made it to my level of spicy specification")

Review.all.count
customer1.full_name
Customer.find_by_name("Priyam Sarma")
Customer.all
Customer.find_by_name("Rochel Levi")
Customer.find_all_by_first_name("Rochel")
Customer.all_names

Restaurant.find_by_name("Pio Pio")
restaurant1.reviews
restaurant1.customers

restaurant2.reviews
restaurant2.customers


# binding.pry
binding.pry
Pry.start
