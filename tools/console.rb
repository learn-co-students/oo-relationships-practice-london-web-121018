require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Data

g1 = Guest.new("Harry")
g2 = Guest.new("Tom")
g3 = Guest.new("Jack")

l1 = Listing.new("London")
l2 = Listing.new("New York")
l3 = Listing.new("Paris")
l4 = Listing.new("London")

t1 = Trip.new(g1, l2)
t2 = Trip.new(g1, l3)
t3 = Trip.new(g2, l2)
t4 = Trip.new(g2, l2)
t5 = Trip.new(g3, l1)

Pry.start
