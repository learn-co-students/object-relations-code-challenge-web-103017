class Restaurant
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restObj|
      restObj.name.downcase == name.downcase
    end
  end

  def reviews
    Review.all.select do |revObj|
      revObj.restaurant == self
    end
  end


  def customers
    Review.all.map do |revObj|
      if revObj.restaurant == self
        revObj.customer
      end
    end.uniq.compact
  end
end
