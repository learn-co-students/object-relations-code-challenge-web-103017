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
    new_name = name.downcase
    Customer.all.find{|cus| "#{cus.first_name.downcase} #{cus.last_name.downcase}" == new_name }
    # full_names.find{|fn| fn == name}
  end

  def self.find_all_by_first_name(name)
    new_name = name.downcase
    Customer.all.select{|cus| "#{cus.first_name.downcase}" == new_name}
  end

  def self.all_names
    Customer.all.map{|cus| cus.full_name}
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

  def my_reviews
    Review.all.select{|rev| rev.customer == self}
  end
end
