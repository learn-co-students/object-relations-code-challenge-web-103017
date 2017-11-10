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
    self.all.find{|inst| inst.name == name}
  end

  def reviews
    Review.all.collect{|inst| inst.content if inst.restaurant == self}.compact
  end

  def customers
    customers = Review.all.collect{|review_inst| review_inst}
    customers.collect{|cust_instance| cust_instance.full_name}
  end

end
