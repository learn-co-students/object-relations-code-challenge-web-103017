require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kat = Customer.new("Kat", "Papacostas")
kat2 = Customer.new("Kat", "Papas")
erik = Customer.new("Erik", "James")
ant = Customer.new("Ant", "Cavalo")
kelley = Customer.new("Kelley", "Branch")

myres = Restaurant.new("MyRes")
chilis = Restaurant.new("Chilis")
agnanti = Restaurant.new("Agnanti")

kat.add_review(agnanti, "amazing!")
kat.add_review(chilis, "fine")
kat.add_review(myres, "phenom")

erik.add_review(agnanti, "amazingly bad")
erik.add_review(chilis, "fineish")
erik.add_review(myres, "nope")

kelley.add_review(agnanti, "I want to live there")
kelley.add_review(chilis, "fantastic")




binding.pry

true
#
# Pry.start
