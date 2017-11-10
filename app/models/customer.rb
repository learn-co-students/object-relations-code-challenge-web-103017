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

# begin new methods

  def self.all
    # X return all customers
    @@all
  end

  def self.find_by_name(name)
    # X given a string of a full name
    # , returns the first customer whose full name matches
    split_name = name.split(" ")#["Dan", "O'Dea"]
    self.all.find{ |customer| customer.first_name == split_name[0] && customer.last_name == split_name[1] }
  end

  def self.find_all_by_first_name(name)
    # X given a string of a first name, returns an array containing all customers with that first name
    self.all.select { |customer| customer.first_name == name }
  end

  def self.all_names
    # X should return an array of all of the customer full names
    self.all.map{ |customer| "#{customer.first_name} #{customer.last_name}" }
  end

  def add_review(restaurant, content)
    # given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

    # Does this need review to be built first?
    Review.new(self.full_name, restaurant, content)
  end
end
