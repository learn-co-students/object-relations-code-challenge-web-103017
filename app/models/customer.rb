class Customer
  attr_accessor :first_name, :last_name

  @@all
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
    all_full = Customer.all.map do |cust_instance|
      #we can do it woth find
      if cust_instance.full_name == name
        cust_instance
      end
      #with Select: Customer.all.select {|cust_instance| cust_instance.full_name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.map do |cust_instance|
      if cust_instance.first_name == name
        cust_instance
      end
    end
  end

  def self.all_names
    Customer.all.map do |cust_instance|
      cust_instance.full_name
    end
  end

  def add_review(restaurant, content)
    #first_step:
    # Review.all.map |review_instance|
    #     if review review_instance.content == content && review_instance.restaurant == restaurant
    #if my customer wrote content
    #associate it with content and restaurant
    #review_instance.content, r_i.restaurant

    #second
    Review.new(self, restaurant, content)
  end
end
