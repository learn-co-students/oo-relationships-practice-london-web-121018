class Driver
  attr_accessor :name, :passenger, :distance


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def passengers
    self.rides.map { |ride| ride.passenger.name }
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def total_mileage
    array = self.rides.map { |ride| ride.distance }
    array.sum
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      if driver.total_mileage >= distance.to_f
         driver.name
      end
    end
  end

end
