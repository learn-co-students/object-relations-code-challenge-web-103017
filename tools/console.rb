require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kfc = Restaurant.new("KFC")
tacobell = Restaurant.new("Taco Bell")

erica = Customer.new("Erica", "Li")
tim = Customer.new("Tim", "Campbell")
bey = Customer.new("Beyonce", "Knowles")

review1 = erica.add_review(kfc, "so oily")
review2 = tim.add_review(tacobell, "so spicy")
review3 = erica.add_review(tacobell, "yum")


Pry.start
