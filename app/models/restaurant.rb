class Restaurant

  attr_accessor :name, :reviews

  @@all = [  ]

  def initialize(name)
    @name = name
    @@all << self
    @reviews = []
  end

  def self.find_by_name(string_name) #given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.find { |restaurant| restaurant.name == string_name}
  end


  def customers #should return all of the customers who have written reviews of that restaurant.

  end

  def self.all #returns an array of all restaurants
    @@all
  end
  
  # def reviews #returns an array of all reviews for that restaurant
  #
  # end
end
