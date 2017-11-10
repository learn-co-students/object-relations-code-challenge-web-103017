class Restaurant

@@all_restaurants = []

  attr_accessor :name, :customer

  def initialize(name)
    @name = name
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    @@all_restaurants.select do |restaurant|
      restaurant.name == name
    end.first
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    review_customers = Review.all.select do |review|
      review.restaurant == self
    end
    review_customers.map do |review|
      review.customer
    end
  end

end
