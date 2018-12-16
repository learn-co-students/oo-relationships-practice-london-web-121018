class Listing
  attr_accessor :name, :trips
  @@all = []

  def initialize(name)
    @name = name
    @trips = []
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end 

    def trip_count
      trips.count
    end

    def find_all_by_city(city)
      trips.select do |trip|
        trip.city == city
      end
    end

    def self.most_popular
      @@all.max_by do |listing|
        listing.trips.count
      end
    end
end
