class Review

  attr_accessor :customer, :restaurant, :customer_instance, :restaraunt_instance, :review
  @@all = []

  def initialize(customer_instance, restaraunt_instance, review)
    @customer_instance = customer_instance
    @restaraunt_instance = restaraunt_instance
    @review = review
    @@all << self
  end

  def customer
    self.customer_instance
  end

  def restaurant
    self.restaraunt_instance
  end

  def self.all
    @@all
  end

end
