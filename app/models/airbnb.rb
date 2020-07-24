class Listings

  attr_accessor
  attr_reader :city_name

  @@all = []

  def initialize (city_name)
    @city_name = city_name
    @@all << self
  end

  def trips
    Trips.all.each {|trip| trip.listing == self }
  end

  def guests
    guests = []
    self.trips.each {|trip|
      if trip.listing == self
        guests << trip.guest
      end }
      guests
  end

  def trip_count
    self.trips.count
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    Listings.all.select {|listing| listing.city_name == city}
  end

  def self.most_popular
    most_trips = 0
    Trips.all.each {|trip|
      if trip.listing.count > most_trips
        most_trips == trip.listing.count
        trip
      end
    }
end
end



class Guests

  attr_accessor
  attr_reader :name

  @@all = []

def self.all
  @@all
end

  def initialize (name)
    @name = name

    @@all << self
  end

  def trips
    Trips.all.select {|trip| trip.guest == self}
  end

  def self.find_all_by_name(name)
    Trips.all.select {|trip| trip.guest.name == name}
  end

def trip_count
  self.trips.count
end

def self.pro_traveller
  Trips.all.each {|trip|
    if trip.guest.trips.count > 1
    end }
end



  def listings
    self.trips.select {|trip| trip.listing}
  end

end

class Trips

  attr_accessor
  attr_reader :guest, :listing

  @@all = []
  @@guests = []



  def initialize (guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
    @@guests << guest
  end

  def self.all
    @@all
  end

  def self.guests
    @@guests
  end

end
