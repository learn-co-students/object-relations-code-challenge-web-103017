class Review
  attr_reader :review, :restaurant, :customer

  @@all = []

  def initialize(restaurant, customer, review)
    @restaurant = restaurant
    @customer = customer
    @review = review
    @@all << self
  end

  def restaurant #returns the restaurant for that given review
    result = Review.all.select { |reviews| reviews.restaurant == self}

  end

  def customer #returns the customer for that given review
    result = Review.all.select { |reviews| reviews.customer == self }
  end

  def self.all #returns all of the reviews
    @@all
  end
end


# jack = Customer.new('Jack', 'Luuu')
# sally = Customer.new('Sally', "Woo")
# chipotle = Restaurant.new('chiptole')
# mcdonald = Restaurant.new('mcdonald')
# review1 = Review.new(jack, chipotle)
# review1 = Review.new(jack, mcdonald)
