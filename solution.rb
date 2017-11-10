# Please copy/paste all three classes into this file to submit your solution!



#############CUSTOMER
class Customer
  attr_accessor :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    #should return all of the customers
    @@customers
  end

  def self.find_by_name(name)
    # given a string of a full name,
    # returns the first customer whose
    #full name matches
    self.all.detect{|x|"#{x.first_name} #{x.last_name}" == name}
  end

  def add_review(restaurant, content)
    #given some content and a restaurant,
    #creates a new review and associates it
    #with that customer and that restaurant
    review = Review.new(restaurant,content)
    review.customer = self
  end

  def self.all_names
    self.all.collect {|x| "#{x.first_name} #{x.last_name}"}
  end

end



###################REVIEW

class Review

  attr_accessor :customer, :restaurant, :content

  @@reviews = []

  def initialize(restaurant,content)
    @restaurant = restaurant
    @content = content
    @@reviews << self
  end

  def self.all
    #returns all of the reviews
    @@reviews
  end


############# Covered by attr_accessor
  # def customer
  #   # returns the customer for that given review
  # end
  #
  # def restaurant
  #   #returns the restaurant for that given review
  # end
  #

end


################RESTAURANT

class Restaurant
  attr_accessor :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  def self.all
    #returns an array of all restaurants
    @@restaurants
  end

  def self.find_by_name(name)
    # given a string of restaurant name,
    # returns the first restaurant that matches
    self.all.detect{|x|x.name == name}
  end

  def reviews
    #returns an array of all reviews for
    #that restaurant
    Review.all.select{|x| x.restaurant == self}
  end

  def customers
    Review.all.collect {|x| x.customer}.uniq
    #return all of the customers who
    #have written reviews of that restaurant
  end

end
