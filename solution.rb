# Please copy/paste all three classes into this file to submit your solution!

class Customer

  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  #Meryl: Consider it to be name as "first_name last_name"
  def self.find_by_name(name)
    self.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select{|customer| customer.first_name == name}.collect{|customer| customer}
  end

  # Do Duplicates matter? Meryl: Yes we should return duplicates
  def self.all_names
    self.all.collect{|customer| customer.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

class Review
    @@all = []

    attr_accessor :customer, :restaurant, :content

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

class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}.collect{|review| review}
  end

  def customers
    Review.all.select{|review| review.restaurant == self}.collect{|review| review.customer}
  end

end
