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
    split_name = name.split(' ')
    first_name = split_name[0]
    last_name = split_name[1]
    self.all.select do |customer_instance|
      customer_instance.first_name == first_name && customer_instance.last_name == last_name
    end.first
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer_instance|
      customer_instance.first_name == name
    end
  end


  def self.all_names
    self.all.collect do |name|
      name.full_name
    end
  end

########
####
  def add_review(restaurant_instance, review)
    Review.new(self, restaurant_instance, review)
  end


end
