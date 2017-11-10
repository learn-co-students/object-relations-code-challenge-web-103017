class Review
  @@all = []
  attr_accessor :customer, :resturant, :content

  def initialize(customer, resturant, content)
    @customer = customer
    @resturant = resturant
    @content = content

    @@all << self
  end

  def self.all
    @@all
  end

end

# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
