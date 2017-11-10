require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



brendan = Customer.new('Brendan', 'McIlhenny')
carol = Customer.new('Carol', 'McIlhenny')
brian = Customer.new('Brian', 'McIlhenny')


sal_n_joes = Restaurant.new('Sal N Joes')
han = Restaurant.new('Han Dynasty')
panera = Restaurant.new('Panera')

brendan_sal_n_joes_review = Review.new(brendan, sal_n_joes, 'It was good')
carol_panera_review = Review.new(carol, panera, 'It was ok')
brian_panera_review = Review.new(brian, panera, 'It was meh')
brendan_han_review = Review.new(brendan, han, 'It was spicy')


brendan.add_review(panera, 'love the chicken soup')
brendan.full_name


Customer.find_by_name('Brendan McIlhenny')
Customer.all_names
binding.pry

Restaurant.find_by_name('Han Dynasty')
