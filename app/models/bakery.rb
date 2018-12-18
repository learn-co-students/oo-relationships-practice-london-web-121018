class Bakeries
@@all = []

attr_reader :name
attr_accessor :desserts

def initialize (name)
  @name = name
  @@all << self
  @desserts = []
end

def self.all
@@all
end

def ingredients
  ingredients = []
  Desserts.all.each {|dessert|
    if dessert.bakery == self
      ingredients << dessert.ingredients
    end }
  end



  def average_calories
    x = []
    self.desserts.map {|dessert| x = dessert.calories}
    x.inject('+')/dessert.calories.length
end

def shopping_list
  self.desserts.ingredients.split(", ")
end

end

class Desserts
@@all = []

attr_reader :name
attr_accessor :ingredients

def initialize (name)
  @name = name
  @@all << self
  @ingredients = []
  @name = name
end

def self.all
@@all
end

def bakery
  Bakeries.all.select {|bakery| bakery.desserts == self}
end

def calories
  calories = 0
  self.ingredients.each {|ingredient| calories += ingredient.calorie_count}
  calories
end

end



class Ingredients

  @@all = []

  attr_reader :calorie_count, :name
  attr_accessor

  def initialize (name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    @@all << self

  end

def self.all
@@all
end

def dessert
  Desserts.all.select {|dessert| dessert.ingredients == self}
end

def self.find_all_by_name(ingredient)
 self.all.include?(ingredient)
end


end
