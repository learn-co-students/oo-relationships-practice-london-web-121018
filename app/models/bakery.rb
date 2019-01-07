class Bakery
  @@all = []
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def bakery_menu
    Dessert.all.select {|dessert| dessert.bakery == self}
  end

  def desserts
    bakery_menu.map {|dessert| dessert.name}
  end

  def ingredients
    bakery_menu.map {|dessert| dessert.ingredients}
  end

  def total_calories
    tot_calories = 0
    ingredients.each do |ingredient_array|
      ingredient_array.each {|ingredient| tot_calories += ingredient.calorie_count}
    end
    tot_calories
  end

  def average_calories
    total_calories/desserts.length
  end

  def shopping_list
    shop_list = []
    ingredients.each do |ingredient_array|
      ingredient_array.each {|ingredient| shop_list << ingredient.name}
    end
    shop_list.flatten.uniq
  end

end
