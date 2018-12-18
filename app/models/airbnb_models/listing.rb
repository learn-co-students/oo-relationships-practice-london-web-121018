class Listing
  attr_accessor :city, :trips
  @@all = []

  def initialize(city, type)
    @city = city
    @type = type
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.listing == self}
  end

  def guests
    trips.map { |trip| trip.guest}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city == city }
  end

  def self.most_popular
    Listing.all.max_by { |listing| listing.trip_count }
  end


end
