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


  def self.find_by_name(name)

  end
  def find_all_by_first_name(name)

  end
  def all_names
    @@all
  end

  def add_review(restaurant, content) #jack
    restaurant.reviews = Review.new(content)
  end

  def self.all
    @@all
  end
end
