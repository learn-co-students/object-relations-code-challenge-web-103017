class Review

  attr_accessor :customer, :restaurant, :content

  @@reviews = []

  def initialize(restaurant,content)
    @restaurant = restaurant
    @content = content
    @@reviews << self
  end

  def self.all
    #returns all of the reviews
    @@reviews
  end


############# Covered by attr_accessor
  # def customer
  #   # returns the customer for that given review
  # end
  #
  # def restaurant
  #   #returns the restaurant for that given review
  # end
  #

end
