require 'pry'

class Dessert
  attr_accessor :dish, :ingredient
  @@all = []

  def initialize(dish, ingredient)
    @dish = dish
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    self.ingredient.map { |ingred| ingred.item }
  end

  def bakery
  area1 = {}
    Bakery.all.each do |area|
        # binding.pry
      area.dessert.select do |dessert|
        # binding.pry
        if dessert == self
          area1 = area
        end
      end
    end
    area1
  end

  def calories
    cal = self.ingredient.map { |ingred| ingred.calorie }
    cal.sum
  end

end
