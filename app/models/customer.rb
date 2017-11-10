class Customer

@@all_customers = []

  attr_accessor :first_name, :last_name, :full_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.all_names
    @@all_customers.map do |customer|
      customer.full_name
    end
  end

  def self.find_all_by_first_name(name)
    @@all_customers.select do |customer|
      customer.first_name == name
    end
  end

  def self.find_by_name(name)
    @@all_customers.select do |customer|
      @full_name = customer.full_name
      @full_name == name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end
