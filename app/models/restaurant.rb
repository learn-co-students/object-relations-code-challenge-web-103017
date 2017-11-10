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
    self.all.find {|restaurant| restaurant.name == name}
  end



  def reviews
    reviews = Review.all.select {|review| review.restaurant == self}
  end

  # I made this just in case #reviews in the Read Me was asking for the content
  # of the reviews for one restaurant in an array.
  def reviews_content
    self.reviews.collect {|reviews| reviews.content}
  end

  def customers
    self.reviews.collect {|reviews| reviews.customer}
  end

end
