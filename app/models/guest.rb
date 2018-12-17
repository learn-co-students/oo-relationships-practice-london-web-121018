class Guest
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def listings
    trips.map {|trip| trip.listing }
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end
  end

  def trip_count
    trips.length
  end

  def self.pro_traveller
    self.all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    self.all.select {|guest| guest.name == name}
  end

end
