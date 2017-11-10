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
    # given a string of a full name, returns the first customer whose full name matches
    Customer.all.select{|customer_instance| customer_instance.full_name == name}.first

  end

  def self.find_all_by_first_name(name)
    # given a string of a first name, returns an array containing all customers with that first name
    Customer.all.select{|customer_instance| customer_instance.first_name == name}

  end

  def self.all_names
    # should return an array of all of the customer full names
    Customer.all.map{|customer_instance| customer_instance.full_name}
  end

  def add_review(restaurant, content = " ")
    # given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
    new_review = Review.new(self, restaurant, content)
  end



end



# Customer.all done
# should return all of the customers
# Customer.find_by_name(name)
# given a string of a full name, returns the first customer whose full name matches
# Customer.find_all_by_first_name(name)
# given a string of a first name, returns an array containing all customers with that first name
# Customer.all_names
# should return an array of all of the customer full names
# Customer#add_review(restaurant, content)
# given some content and a restaurant, creates a new review and associates it with that customer and that restaurant
