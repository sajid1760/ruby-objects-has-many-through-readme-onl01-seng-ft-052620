class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
    @meals = []
  end
 
  def self.all
    @@all
  end
 
  def new_meal(customer,total,tip)
    newmeal = meal.new(self,customer,total,tip)
    @meals << newmeal
  end
  
  def meals
    @meals
  end
 
end