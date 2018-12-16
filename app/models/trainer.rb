class Trainer
  attr_reader :clients, :locations
   @@all = []

  def initialize(name)
    @name = name
    @clinets = []
    @locations = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_clients
    @@all.max_by do |trainer|
        trainer.clients.count
    end
  end

  def locations
    Location.all.select do |location|
      location.trainers.include?(self)
    end
  end

  def clients
    locations.map {|location| location.clients}.flatten

  end


end
