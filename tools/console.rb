require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#testing # =>
bob = Customer.new("bob", "smith")
bob2 = Customer.new("bob", "jones")
jane = Customer.new("jane", "cohen")
neil = Customer.new("neil", "metzler")

mission_chinese = Restaurant.new("mission chinese")
little_caesars = Restaurant.new("little caesars")
parm = Restaurant.new("parm")

neil.add_review(parm, "OK")
neil.add_review(mission_chinese, "awesome")
neil.add_review(little_caesars, "bad")

bob.add_review(parm, "dank")
bob.add_review(mission_chinese, "meh")
bob.add_review(little_caesars, "woah!")

jane.add_review(parm, "the best")

bob2.add_review(little_caesars, "simply mind-blowing")




binding.pry
Pry.start
