require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# # Test Data (Airbnb)
#
# g1 = Guest.new("Harry")
# g2 = Guest.new("Tom")
# g3 = Guest.new("Jack")
#
# l1 = Listing.new("London")
# l2 = Listing.new("New York")
# l3 = Listing.new("Paris")
# l4 = Listing.new("London")
#
# t1 = Trip.new(g1, l2)
# t2 = Trip.new(g1, l3)
# t3 = Trip.new(g2, l2)
# t4 = Trip.new(g2, l2)
# t5 = Trip.new(g3, l1)

# Test Data (Bakery)

b1 = Bakery.new("Buns")
b2 = Bakery.new("Bettys")
b3 = Bakery.new("Tasty")

i1 = Ingredient.new("Chocolate Chips", 52)
i2 = Ingredient.new("Flour", 20)
i3 = Ingredient.new("Baking Powder", 11)
i4 = Ingredient.new("Chocolate", 257)

d1 = Dessert.new("Cinnamon Swirl", b2, [i1, i4])
d2 = Dessert.new("Mince Pie", b1, [i1, i2, i3])
d3 = Dessert.new("Chocolate Cake", b2, [i4])
d4 = Dessert.new("Muffin", b2, [i1, i2, i3, i4])
d5 = Dessert.new("Iced Roll", b3, [i3, i4])

Pry.start
