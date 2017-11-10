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

  def self.find_by_name(name)
    @@all.select{|restaurant| restaurant.name == name}

  end


  def reviews

    Review.all.select{|review| review.resturant == self}

  end


  def customers
    reviews = Review.all.collect{|review| review}
    revs_for_rest = reviews.select{|rev| rev.resturant == self }
    revs_for_rest.collect{|item| item.customer}

  end

end


# + Restaurant.all
#   + returns an array of all restaurants
# + Restaurant.find_by_name(name)
#   + given a string of restaurant name, returns the first restaurant that matches
# + Restaurant#reviews
#   + returns an array of all reviews for that restaurant
# + Restaurant#customers
#   + should return all of the customers who have written reviews of that restaurant.
