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
    all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.collect{|review| review if review.restaurant == self}.compact
  end

  def customers
    Review.all.collect{|review| review.customer if review.restaurant == self}.compact.uniq
  end

end
