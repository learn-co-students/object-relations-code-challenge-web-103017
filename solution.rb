class Restaurant

@@all_restaurants = []

  attr_accessor :name, :customer

  def initialize(name)
    @name = name
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name(name)
    @@all_restaurants.select do |restaurant|
      restaurant.name == name
    end.first
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    review_customers = Review.all.select do |review|
      review.restaurant == self
    end
    review_customers.map do |review|
      review.customer
    end
  end

end

class Customer

@@all_customers = []

  attr_accessor :first_name, :last_name, :full_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.all_names
    @@all_customers.map do |customer|
      customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all_customers.select do |customer|
      customer.first_name == name
    end
  end

  def self.find_by_name(name)
    @@all_customers.select do |customer|
      @full_name = customer.full_name
      @full_name == name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end

class Review

@@all_reviews = []

attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end

end
