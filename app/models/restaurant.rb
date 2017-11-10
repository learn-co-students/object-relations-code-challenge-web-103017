class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Return all instances of restaurant
  def self.all
    # if the only restaurants we care about are those which have had a review written about them
    #Review.all.collect{|ri| ri.restaurant}.uniq
    @@all
  end

  # Given a string of restaurant name
  # Return the first restaurant instance with that name
  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

  # Return an array of Review instances for this restaurant instance
  def reviews
    Review.all.select{|ri| ri.restaurant == self}
  end

  # Return an array of Customer instances who have written reviews of this restaurant
  def customers
    self.reviews.collect{|review| review.customer}
  end

end
