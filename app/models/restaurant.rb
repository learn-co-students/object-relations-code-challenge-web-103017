class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}.collect{|review| review}
  end

  def customers
    Review.all.select{|review| review.restaurant == self}.collect{|review| review.customer}
  end

end
