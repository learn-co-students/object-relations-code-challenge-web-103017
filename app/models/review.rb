class Review
  attr_accessor :restaurant, :customer, :content
  @@all = []
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
end
