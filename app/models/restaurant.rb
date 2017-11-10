class Restaurant

  @@all = []

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    reviews_with_restauraunt_name = Review.all.select do |review_instance|
     review_instance.restaraunt_instance.name == name
   end
   reviews_with_restauraunt_name.collect do |review_instance|
     review_instance.restaraunt_instance
   end.first
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def customers
    self.reviews.collect do |restaurant_review|
      restaurant_review.customer
    end
  end

  def self.all
    @@all
  end
end
