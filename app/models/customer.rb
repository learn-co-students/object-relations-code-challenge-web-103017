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
