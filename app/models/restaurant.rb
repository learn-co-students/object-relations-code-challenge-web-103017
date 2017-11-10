class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # X returns array of all restaurants
    @@all
  end

  def self.find_by_name(name)
    # X given a string of restaurant name, returns the first restaurant that matches
    self.all.find{ |restaurant| restaurant.name == name }
  end

  def reviews
    # returns an array of all reviews for that restaurant

    
  end

  def customers
    # should return all of the customers who have written reviews of that restaurant.

  end
end
