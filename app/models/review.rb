class Review
  @@all = []

  def self.all
    @@all
  end

  attr_reader :customer, :restaurant

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end
  
end
