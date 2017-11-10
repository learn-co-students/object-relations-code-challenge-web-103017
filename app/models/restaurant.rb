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

  def self.find_by_name(restaurant)
    res_name = restaurant.downcase
    Restaurant.all.select{|res| res.name.downcase == res_name}
  end

  def reviews
    Review.all.select{|rev| rev.restaurant == self}
  end

  def customers
    self.reviews.map{|rev| rev.customer}
  end
end
