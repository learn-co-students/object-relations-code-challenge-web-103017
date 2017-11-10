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
