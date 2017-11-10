class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(search_name)
    self.all.find{|customer| customer.full_name == search_name}
  end

  def self.find_all_by_first_name(search_first_name)
    self.all.select{|customer| customer.first_name == search_first_name}
  end

  def self.all_names
    self.all.map { |customer| customer.full_name  }
  end

  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end
