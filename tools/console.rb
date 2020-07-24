require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# -------------------
# john = Guest.new('Jonny')
# jim = Guest.new('jimbo')
# fred = Guest.new('freddy')
# myhouse = Listing.new('Wakanda')
# youplace = Listing.new('Avenger tower')
# wildtime = Trip.new(john,myhouse,'NYC')
# chinatime = Trip.new(fred,youplace,'Beijing')
# japantime = Trip.new(fred,youplace,'Tokyo')
#
# Listing.most_popular
# myhouse.guests
# Trip.all
# ------------------------------------------
# john = Trainer.new('Jonny')
# jim = Trainer.new('jimbo')
# fred = Trainer.new('freddy')
# jeff = Client.new('jeffy',john)
# neff = Client.new('neffy',jim)
# beff = Client.new('beffy',fred)
# beijing = Location.new('BJ',john,jeff)
# ldn = Location.new('Ldn',jim,neff)
# wyoming = Location.new('where?',fred,beff)
# eastside = Location.new('home',john,jeff)
# Location.least_clients
# wyoming.clients=(jeff)
# eastside.clients=(neff)
# ldn.clients=(beff)
# #----------------------------------------------
avenger = Movie.new('Avengers')
fast = Movie.new('Furious')
goblin = Movie.new('scarymovie')
dragonschool = Movie.new('disneylatests')
greatgats = Movie.new('Leo')
twisted = Movie.new('saw9')
friends = Show.new('saw9')
dbz = Show.new('dragonball')
daredevil = Show.new('whywasitcancelled')
documentary = Show.new('wontwatchit')
friends = Show.new('Friends')
harry = Character.new('Harry Potter', avenger)
rose = Character.new('rosy', twisted)
billy = Character.new('Harry Potter',greatgats)
tom = Character.new('Harry Potter',goblin)

ricky = Actor.new('Rick',avenger,friends,harry)
james = Actor.new('I/m rick james',fast,daredevil,rose)

Movie.most_actors
Show.on_the_big_screen
Actor.most_characters

binding.pry
0