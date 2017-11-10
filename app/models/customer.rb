class Customer
  attr_accessor :first_name, :last_name, :full_name, :content
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = full_name
    @content = content
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    #find the customer first instance with this name
    Customer.all.select do |customer|
      customer.full_name == name
    end.first

  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all
    @@all
  end

  def self.all_names
    Customer.all.select do |customer|
      customer.full_name = self
    end
  end

  def add_review(restaurant,content)
    Review.new(self,restaurant)
  end
end
