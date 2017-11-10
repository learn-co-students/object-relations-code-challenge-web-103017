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

  # Return all of the customer instances

  def self.all
    # if the only customers we care about are those who have written a review
    # Review.all.collect{|ri| ri.customer}.uniq
    @@all
  end

  # Given a string of a full name , return the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find{|instance| instance.full_name == name}
  end

  #given a string of a first name,
  # Return an array containing all customers with that first name
  def self.find_all_by_first_name(name)
    self.all.select{|instance| instance.first_name == name}
  end

  # return an array of all full names
  def self.all_names
    self.all.collect{|instance| instance.full_name}
  end


  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def reviews
    Review.all.select{|instance| instance.customer == self}
  end
end # => End class
