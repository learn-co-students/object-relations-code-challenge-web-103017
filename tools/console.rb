require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


mud = Restaurant.new("Mud")
veselka = Restaurant.new("Veselka")
mud2 = Restaurant.new("Mud")
mermaid = Restaurant.new("Mermaid Inn")

seth = Customer.new("Seth", "Barden")
tim = Customer.new("Tim", "Meadows")
seth2 = Customer.new("Seth", "Smith")
bob = Customer.new("Bob", "Sagat")

seth.add_review(mud, "Sucks")
seth.add_review(veselka, "GREAT!")
tim.add_review(mermaid, "so-so")
tim.add_review(mud, "terrific")
bob.add_review(mud2, "Better than regular mud")


Pry.start
