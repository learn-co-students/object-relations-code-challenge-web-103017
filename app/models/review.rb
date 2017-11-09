class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content = nil)
    @@all << self
    @customer = customer
    @restaurant = restaurant
    @content = content
    restaurant.reviews << self
  end

  def self.all
    @@all
  end

end
