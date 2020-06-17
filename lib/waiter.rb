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
    newmeal = Meal.new(self,customer,total,tip)
    @meals << newmeal
  end
  
  def meals
    @meals
  end
  
  def best_tipper
    tipvector = @meals.map { |meal| meal.tip }
    tipmax = tipvector.tipmax
    tipmaxmeal = @meals.find { |meal| meal.tip == tipmax}
    tipmaxmeal.name
  end
end