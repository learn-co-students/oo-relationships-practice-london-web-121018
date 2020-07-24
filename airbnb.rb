class Listings

  attr_accessor
  attr_reader :city_name

  @@all = []

  def initialize (city_name)
    @city_name = city_name
    @@all << self
  end

  def trips
    Trip.all.select {|trip| trip.listing == self }
  end

  def guests
    self.trips.select {|trip| trip.guest}
  end

  def trip_count
    self.trips.count
  end

  def all
    @@all
  end

  def find_all_by_city(city)
    Listings.all.select {|listing| listing.city_name == city}
  end

  def most_popular
    most_trips = 0

end



class Guests

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name

    @@all << self
  end

  def trips
    Trips.all.select {|trip| trip.guest == self}
  end


  def listings
    self.trips.select {|trip| trip.listing}
  end

end

class Trips

  attr_accessor
  attr_reader :guest, :listing

  @@all = []

  def initialize (guest, listing)
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end


end
