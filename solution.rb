# Please copy/paste all three classes into this file to submit your solution!

class Customer
  attr_accessor :first_name, :last_name

  @@all = []
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
    name_low = name.downcase
    all.select{|inst| inst.full_name.downcase == name_low}.first
  end

  def self.find_all_by_first_name(name)
    name_low = name.downcase
    all.select{|inst| inst.first_name.downcase == name_low.split(" ")[0]}
  end

  def self.all_names
    all.map{|inst| inst.full_name}
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant)
  end
end

class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name) #name of rest
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name_low = name.downcase
    all.select{|inst| inst.name.downcase == name_low}
  end

  def reviews
    Review.all.map do |inst|
      if inst.restaurant == self
        inst
      end
    end.compact
  end

  def customers
    Review.all.map do |inst|
      if inst.restaurant == self
        inst.customer
      end
    end.compact
  end
end

class Review
  attr_accessor :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end
end
