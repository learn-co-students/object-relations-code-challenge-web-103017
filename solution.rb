# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Customer.all.select{|customer_instance| customer_instance.full_name == name}.first
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer_instance| customer_instance.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer_instance| customer_instance.full_name}
  end

  def add_review(restaurant, content = " ")
    new_review = Review.new(self, restaurant, content)
  end


end


class Review
  @@all = []

  attr_accessor :customer, :restaurant, :review



  def initialize(customer, restaurant, review)
    @customer = customer
    @restaurant = restaurant
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

end


class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    Restaurant.all.select{ |restaurant_instance| restaurant_instance.name == search_name}.first
  end


  def reviews
    Review.all.map{|review_instance| review_instance.review if review_instance.restaurant.name == @name}.compact
  end

  def customers
    Review.all.map{|review_instance| review_instance.customer if review_instance.restaurant.name == self.name}.compact
  end


end
