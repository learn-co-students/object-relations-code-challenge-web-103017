class Review

  attr_accessor :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content=nil)
    @restaurant = restaurant
    @customer = customer
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end
