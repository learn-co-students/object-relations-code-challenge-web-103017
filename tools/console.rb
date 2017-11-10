require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



restaurant1 = Restaurant.new("R1")
restaurant2 = Restaurant.new("R2")

yuliya = Customer.new("Yuliya")
tom = Customer.new("Tom")
content1 = "bla bla review"
content2 = "bla"

review1 = Review.new(yuliya, restaurant1, content1)
review2 = Review.new(tom, restaurant2, content2)



binding.pry
