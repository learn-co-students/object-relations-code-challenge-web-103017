require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


connie = Customer.new("connie", "wang")
andy = Customer.new("andy", "tien")
jenny = Customer.new("jenny", "chen")
andy2 = Customer.new("andy", "smith")
connie2 = Customer.new("connie", "wang")


kenka = Restaurant.new("kenka")
ngam = Restaurant.new("ngam")

review = connie.add_review(kenka, "blahblah")
review2 = jenny.add_review(ngam, "moreblah")
review3 = andy.add_review(kenka, "blahblahblah")




binding.pry
true
