class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    first = name.split[0]
    last = name.split[1]
    self.all.detect do |customer|
      if customer.first_name == first && customer.last_name == last
        customer
      end
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.collect do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
