# Please copy/paste all three classes into this file to submit your solution!
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

  def add_review(restaurant, content)
  	binding.pry
  	Review.new(full_name, restaurant, content)
  end


  def self.all
  	@@all
  end

  def self.find_by_name(name)
	@@all.select{|x| x.first_name+" "+x.last_name==name}.first
  end

  def self.find_all_by_first_name(name)
  	@@all.select{|x| x.first_name==name}
  end

  def self.all_names
  	@@all.each do |x|
  		x.first_name+ " " +x.last_name
  	end
  end


end

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

