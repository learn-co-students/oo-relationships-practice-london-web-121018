require 'pry'
class Gym
@@all = []

attr_accessor :location, :trainer

def initialize (trainer, location)
  @location = location
  @trainer = trainer
  @@all << self
end

def self.all
  @@all
end



end



class Trainer

  @@all = []

  attr_accessor :name

  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def clients
    clients = []
    Client.all.each {|client|
      if client.trainer == self
        clients << client
      end
    }
    clients 
  end
end


class Location

  @@all = []

  attr_accessor :name

  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def clients
    location_clients = []
    Gym.all.each {|gym|
      if gym.location == self
        location_clients << gym.trainer.clients
      end
    }
    location_clients
  end


  def self.least_clients
    least_clients = 2
    least_clients_location = ""
    Gym.all.each {|gym|
      if gym.trainer.clients.count < least_clients
        least_clients = gym.trainer.clients.count
        least_clients_location = gym.location

      end
    }
      least_clients_location
  end

end


class Client

  @@all = []

  attr_accessor :trainer, :name

  def initialize (name)
    @name = name
    @trainer = trainer
    @@all << self
  end

  def self.all
    @@all
  end

  ##Additional methods

  def assign_trainer (trainer)
    self.trainer = trainer

    end
end
