class Ingredient
  attr_reader :name, :calorie_count
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, calorie_count)
    @name = name
    @calorie_count = calorie_count
    self.class.all << self
  end

  def dessert
    Dessert.all.select {|dessert| dessert.ingredients.include?(self)}
  end

  def bakery
    dessert.map {|dessert| dessert.bakery}.uniq
  end

  def self.find_all_by_name(string)
    ing_array = []
    Ingredient.all.each do |ingredient|
      ingredient.name.split(" ").each do |ingredient_word|
        if ingredient_word.downcase == string.downcase
          ing_array << ingredient.name
        end
      end
    end
    ing_array
  end

end
