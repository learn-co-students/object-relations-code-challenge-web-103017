require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start

mark = Customer.new("mark", "down")
george2 = Customer.new("george", "gould")
george = Customer.new("george", "gore")
tina = Customer.new("tina", "belcher")

potbelly = Restaurant.new("potbelly")
sweetgreen = Restaurant.new("sweetgreen")

george.add_review(potbelly, "I hated it")
george2.add_review(potbelly, "I loved it")
tina.add_review(sweetgreen, "Greens! Greens! Greens!")
