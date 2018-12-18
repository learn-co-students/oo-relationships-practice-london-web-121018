class Bakery
  attr_accessor :location, :dessert, :ingredient
  @@all = []

  def initialize(location, dessert)
    @location = location
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    arrays = self.dessert.map { |dish| dish.ingredient }
    arrays.flatten!
  end

  def num_of_desserts
    desserts = self.dessert.map { |dish| dish }
    desserts.count
  end

  def average_calories
    array = self.ingredients.map { |ingred| ingred.calorie }
    array.sum/self.num_of_desserts
  end

  def shopping_list
    self.ingredients.map { |ingred| ingred.item }.join(", ")
  end


end
