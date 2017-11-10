class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name) #name of rest
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name_low = name.downcase
    all.select{|inst| inst.name.downcase == name_low}
  end

  def reviews
    Review.all.map do |inst|
      if inst.restaurant == self
        inst
      end
    end.compact
  end

  def customers
    Review.all.map do |inst|
      if inst.restaurant == self
        inst.customer
      end
    end.compact
  end
end
