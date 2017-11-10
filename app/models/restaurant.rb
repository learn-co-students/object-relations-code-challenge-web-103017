class Restaurant

	@@all = []

	attr_accessor :name

	def initialize(name)
	@name = name
	@@all << self
	end

	def reviews
		Review.all.select{|x| x.restaurant==self}
	end

	def customer
		reviews = Review.all.select{|x| x.restaurant==self}
		reviews.each do |x|
			puts x.name
		end
	end

	def self.all
		@@all
	end

	def self.find_by_name(name)
		@@all.select{|x| x.name==name}.first
	end



end
