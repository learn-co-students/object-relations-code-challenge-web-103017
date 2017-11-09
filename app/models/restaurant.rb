class Restaurant
  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @reviews = []
    @customers = []
  end

  def self.all
    @@all
  end

  def customers
    @customers = @reviews.collect {|review| review.customer}
  end

  def self.find_by_name(name)
    self.all.detect do |restaurant|
      restaurant.name == name
    end
  end

end
