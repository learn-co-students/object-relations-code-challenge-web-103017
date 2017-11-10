require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


greg_driza  = Customer.new("Greg", "Driza")
erica_li = Customer.new("Erica", "Li")
dan_odea = Customer.new("Dan", "Odea")

sweet_green = Restaurant.new("SweetGreen")
burger_king = Restaurant.new("burger King")
chipoltle = Restaurant.new("Chipoltle")


greg_driza.add_review(sweet_green, "Loved it")

erica_li.add_review(sweet_green, "hated it")

dan_odea.add_review(sweet_green, "Too much salad")


greg_driza.add_review(burger_king, "You should NOT be eating processed food")

erica_li.add_review(burger_king, "Yeah I agree with greg")

dan_odea.add_review(burger_king, "not enough salad")


greg_driza.add_review(chipoltle, "Pretty good")

erica_li.add_review(chipoltle, "I want to throw up")

dan_odea.add_review(chipoltle, "LOVE")


Pry.start
