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
    self.all.find do |custObj|
      custObj.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |custObj|
      custObj.first_name == name
    end
  end

  def self.all_names
    self.all.map do |custObj|
      custObj.full_name
    end
  end

  def add_review(restaurant, content)
    new_review = Review.new(self, restaurant, content)
  end

  def reviews
    Review.all.select do |revObj|
      if revObj.customer == self
        revObj
      end
    end
  end

  def delete_reviews(restaurant)
    Review.all.delete_if do |revObj|
      revObj.customer == self && revObj.restaurant == restaurant
    end
  end
end
