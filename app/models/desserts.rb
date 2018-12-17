class Dessert
  @@all = []
  attr_accessor :ingredients
  attr_reader :name, :bakery

  def self.all
    @@all
  end

  def initialize(name, bakery, ingredients)
    @name = name
    @bakery = bakery
    @ingredients = ingredients
    self.class.all << self
  end

  def calories
    total_calories = 0
    self.ingredients.each {|ingredient| total_calories += ingredient.calorie_count}
    total_calories
  end

end
