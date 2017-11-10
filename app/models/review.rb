class Review

@@all_reviews = []

attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end

end
