class Review

  attr_accessor :customer, :restaurant, :content
  @@all = []

  def initialize (customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Review.all.map do |cr_instance|
      if cr_instance.customer == self
        cr_instance
      end
    end
  end

  def restaurant
    Review.all.map do |cr_instance|
      if cr_instance.restaurant == self
        cr_instance
      end
    end
  end


end
