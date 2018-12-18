require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# #==========LYFT SEED DATA==========
# alyssa = Driver.new("Alyssa")
# coco = Driver.new("Coco")
# jinxx = Driver.new("Jinxx")
#
# adore = Passenger.new("Adore")
# bianca = Passenger.new("Bianca")
# courtney = Passenger.new("Courtney")
#
# ride1 = Ride.new(courtney, alyssa, 50)
# ride2 = Ride.new(courtney, coco, 65)
# ride3 = Ride.new(bianca, jinxx, 75)
# ride4 = Ride.new(bianca, alyssa, 40)
# ride5 = Ride.new(adore, coco, 55)
# ride6 = Ride.new(adore, jinxx, 30)

#=============AIRBNB SEED DATA=============
# bris1 = Listing.new("Brisbane", "apartment")
# mel1 = Listing.new("Melbourne", "apartment")
# syd1 = Listing.new("Sydney", "apartment")
# bris2 = Listing.new("Brisbane","villa")
# mel2 = Listing.new("Melbourne", "villa")
# syd2 = Listing.new("Sydney", "villa")
#
# courtney = Guest.new("Courtney Act")
# alaska = Guest.new("Alaska Thunder*")
# willam = Guest.new("Willam Belli")
# oth_courtney = Guest.new("Courtney Act")
# othoth_court = Guest.new("Courtney Act")
#
# trip1 = Trip.new(syd2, courtney)
# trip1 = Trip.new(syd2, alaska)
# trip3 = Trip.new(syd2, willam)
# trip4 = Trip.new(syd1, courtney)
# trip5 = Trip.new(bris1, courtney)
# trip6 = Trip.new(mel1, alaska)
# trip7 = Trip.new(bris2, alaska)
# trip8 = Trip.new(mel2, courtney)
# trip9 = Trip.new(mel2, oth_courtney)


#=============BAKERY SEED DATA===============
# milk = Ingredient.new("milk chocolate",60)
# chocolate = Ingredient.new("chocolate mousse",70)
# sugar = Ingredient.new("sugar",80)
# flour = Ingredient.new("flour",90)
# lemon = Ingredient.new("lemon",50)
# cinnamon = Ingredient.new("cinnamon",80)
# strawberry = Ingredient.new("strawberry",60)
# candy = Ingredient.new("candy",70)
# creme = Ingredient.new("creme chocolate",80)
# oats = Ingredient.new("oats",90)
# banana = Ingredient.new("banana",50)
# berries = Ingredient.new("berries",60)
#
# choc_cake = Dessert.new("chocolate cake", [milk, chocolate, sugar])
# lem_cake = Dessert.new("lemon cake", [flour, lemon, cinnamon])
# straw_crem = Dessert.new("strawberry creme", [strawberry, candy, creme])
# oat_pcake = Dessert.new("banoats pancake", [banana, oats, berries])
#
# willesden = Bakery.new("Willesden", [choc_cake, lem_cake])
# wembley = Bakery.new("Wembley", [straw_crem, oat_pcake])












Pry.start
