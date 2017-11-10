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
