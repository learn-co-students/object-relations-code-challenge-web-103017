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
    name_low = name.downcase
    all.select{|inst| inst.full_name.downcase == name_low}.first
  end

  def self.find_all_by_first_name(name)
    name_low = name.downcase
    all.select{|inst| inst.first_name.downcase == name_low.split(" ")[0]}
  end

  def self.all_names
    all.map{|inst| inst.full_name}
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant)
  end
end
