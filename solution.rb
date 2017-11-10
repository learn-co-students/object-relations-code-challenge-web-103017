
########## CUSTOMER CLASS ##########
class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    all.collect{|customer| customer if customer.first_name == name}.compact
  end

  def self.all_names
    all.collect{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end


########## REVIEWS CLASS ##########
class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end


########## RESTAURANTS CLASS ##########
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
