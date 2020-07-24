class Ride

attr_accessor
attr_reader :passenger, :driver, :distance

@@all = []

def initialize (passenger, driver, distance)
  @passenger = passenger
  @driver = driver
  @distance = distance.to_f
  @@all << self

end

def self.all
  @@all
  end

  def self.average_distance
    total_distance = 0
    self.all.each {|ride|
      total_distance += ride.distance
    }
    total_distance/Ride.all.length
  end
end

class Passenger

attr_accessor
attr_reader :name

@@all = []

def initialize (name)
  @name = name
  @@all << self

end

def self.all
  @@all
  end

def rides
  Ride.all.select{|ride| ride.passenger == self}
end

def complete_ride (driver, distance)
  Ride.new(self, driver, distance)
end

#Additional methods

def total_distance
  total_distance = 0
  rides.each {|ride|
    if ride.passenger == self
      total_distance += ride.distance
    end
  }
  total_distance
end

def self.premium_members
  premium_members = []
  Ride.all.each{|ride|
    if ride.passenger.total_distance > 100
    premium_members << ride.passenger
  end}
  premium_members.uniq
end


  end

class Driver

attr_accessor
attr_reader :name

@@all = []

def initialize (name)
  @name = name
  @@all << self

end

def self.all
  @@all
  end

  def rides
    Ride.all.select{|ride| ride.driver == self}
  end

  #Additional methods

  def passengers
    rides.map{|ride| ride.passenger}
  end

  def total_mileage
    total_mileage = 0
    rides.each {|ride| total_mileage += ride.distance}
      total_mileage
    end


  def self.mileage_cap(distance)
    self.all.select {|driver| driver.mileage >= distance}
  end


  end
