class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(search_name)
    self.all.find{|restaurant| restaurant.name == search_name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    Review.all.inject([]) do |return_array, review|
      return_array << review.customer if review.restaurant == self
      return_array
    end
  end

end
