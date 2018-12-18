class Passenger
  attr_accessor :name, :driver, :distance
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def drivers
    self.rides.map { |ride| ride.driver.name }
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def total_distance
    array = self.rides.map { |ride| ride.distance }
    array.sum
  end

  def self.premium_members
    self.all.select do |passenger|
      if passenger.total_distance >= 100
         passenger.name
      end
    end
  end

end
