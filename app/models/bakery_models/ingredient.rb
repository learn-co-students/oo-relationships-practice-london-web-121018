class Ingredient
  attr_accessor :item, :calorie
  @@all = []

 def initialize(item, calorie)
   @item = item
   @calorie = calorie.to_f
   @@all << self
 end

 def self.all
   @@all
 end

 def self.find_all_by_name(ingredient)
   array  = self.all.map { |ingred| ingred.item }
   array.select { |item| item.include?(ingredient)}
 end

 def dessert
   dessert1 = {}
   Dessert.all.each do |item|
     # binding.pry
     item.ingredient.select do |ingred|
       # binding.pry
       if ingred == self
         dessert1 = item
       end
     end
   end
   dessert1
 end

 def bakery
   area1 = {}
   Bakery.all.each do |area|
        # binding.pry
     area.dessert.each do |dessert|
        # binding.pry
       dessert.ingredient.select do |ingred|
         # binding.pry
         if ingred == self
           area1 = area
           # binding.pry
         end
       end
     end
   end
   area1
 end

end
