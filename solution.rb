# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    first = name.split[0]
    last = name.split[1]
    self.all.detect do |customer|
      if customer.first_name == first && customer.last_name == last
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.collect do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

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

class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content = nil)
    @@all << self
    @customer = customer
    @restaurant = restaurant
    @content = content
    restaurant.reviews << self
  end

  def self.all
    @@all
  end

end
