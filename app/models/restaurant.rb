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

    Review.all.each do |rc_instances|
      rc_instances.find? {|name| rc_instances.restaurant == name}
    end
    #if my restaurant name is in the Review.restaurant.instances
    #return first - find should return first
  end

  def reviews
    Review.all.map do |rc_instance|
      if rc_instance.restaurant == self
        rc_instance.restaurant
      end
      #map should return an array with all that matches
    end
  end

  def customers
    Review.all.map do |rc_instance|
      if rc_instance.customer == self
        rc_instance.customer
      end
    end
  end

end
