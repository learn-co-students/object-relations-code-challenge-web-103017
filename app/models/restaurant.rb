class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    #returns an array of all restaurants
    @@restaurants
  end

  def self.find_by_name(name)
    # given a string of restaurant name,
    # returns the first restaurant that matches
    self.all.detect{|x|x.name == name}
  end

  def reviews
    #returns an array of all reviews for
    #that restaurant
    Review.all.select{|x| x.restaurant == self}
  end

  def customers
    Review.all.collect {|x| x.customer}.uniq
    #return all of the customers who
    #have written reviews of that restaurant
  end

end
