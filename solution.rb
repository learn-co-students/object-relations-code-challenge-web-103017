# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(search_name)
    self.all.find{|customer| customer.full_name == search_name}
  end

  def self.find_all_by_first_name(search_first_name)
    self.all.select{|customer| customer.first_name == search_first_name}
  end

  def self.all_names
    self.all.map { |customer| customer.full_name  }
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end

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

class Review
  attr_reader :customer, :restaurant
  @@all = []

  def self.all
    @@all
  end

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

end
