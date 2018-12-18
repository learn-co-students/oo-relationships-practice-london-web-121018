require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Data

c1 = Client.new("Harry")
c2 = Client.new("Tim")
c3 = Client.new("Trizzy")

l1 = Location.new("Clapham")
l2 = Location.new("Brixton")
l3 = Location.new("City")

t1 = Trainer.new("Charlie", [l1, l2], [c1, c3])
t2 = Trainer.new("Gabs", [l1], [c1])
t3 = Trainer.new("Rohan", [l3], [c1, c2, c3])
t4 = Trainer.new("George", [l1, l3], [c2])
t5 = Trainer.new("Joe", [l3, l1], [c3])



Pry.start
