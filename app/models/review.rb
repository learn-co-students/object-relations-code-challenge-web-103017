class Review
  	
	@@all  = []

  	attr_accessor :name, :restaurant, :review

  	def initialize(name, restaurant, review)
  		@name = name
  		@restaurant = restaurant
  		@review = review
  		@@all << self
  	end

  	def self.all
  		@@all
  	end

end

