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
    # name_arr = name.split(" ")
    self.all.find do |custObj|
      custObj.full_name == name
      #custObj.first_name == name_arr[0] && custObj.last_name == name_arr[1]
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |custObj|
      custObj.first_name == name
    end
  end

  def self.all_names
    self.all.map do |custObj|
      custObj.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end

end

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
    self.all.find do |restObj|
      restObj.name == name
    end
  end

  def reviews
    Review.all.select do |revObj|
      revObj.restaurant == self
    end
  end


  def customers
    Review.all.map do |revObj|
      if revObj.restaurant == self
        revObj.customer
      end
    end
  end
end

class Review
  attr_accessor :restaurant, :customer, :content
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
