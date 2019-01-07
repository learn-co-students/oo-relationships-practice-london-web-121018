class Location
  attr_reader :location
  @@all = []

  def self.all
    @@all
  end

  def initialize(location)
    @location = location
    self.class.all << self
  end

  def trainers
    Trainer.all.select {|trainer| trainer.locations.include?(self)}
  end

  def num_of_trainers
    trainers.length
  end

  def self.least_clients
    self.all.min_by {|location| location.num_of_trainers}
  end

end
