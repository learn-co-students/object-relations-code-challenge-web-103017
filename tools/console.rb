
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

josh = Customer.new("Josh", "Wasserman")
stills = Customer.new("Josh", "Stillman")
greg = Customer.new("Greg", "Jenkins")


kfc = Restaurant.new("KFC")
mcd = Restaurant.new("McDonalds")
bk = Restaurant.new("Burger King")


josh_review1 = josh.add_review(kfc , "Aweful food")
stills_review1 = stills.add_review(kfc, "I love it!")
josh_review2 = josh.add_review(mcd, "Greatest local burger in NYC")


binding.pry
Pry.start
