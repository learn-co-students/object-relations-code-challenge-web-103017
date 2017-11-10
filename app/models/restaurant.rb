class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(search_name)
    # given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.select{ |restaurant_instance| restaurant_instance.name == search_name}.first
  end


  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.map{|review_instance| review_instance.review if review_instance.restaurant.name == @name}.compact
    #
  end

  def customers
    # should return all of the customers who have written reviews of that restaurant.
    Review.all.map{|review_instance| review_instance.customer if review_instance.restaurant.name == self.name}.compact
  end


end



# Restaurant.all - dpne
# returns an array of all restaurants
# Restaurant.find_by_name(name)
# given a string of restaurant name, returns the first restaurant that matches
# Restaurant#reviews
# returns an array of all reviews for that restaurant
# Restaurant#customers
# should return all of the customers who have written reviews of that restaurant.
