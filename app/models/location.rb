class Location
  attr_accessor :trainers
   @@all = []


  def initialize(city,trainer,client)
    @city = city
    @trainers = []
    @clients = []
    @trainers << trainer
    @clients << client
    @@all << self
  end

  def self.all
    @@all
  end

  def self.least_clients
    @@all.max_by do |location|
      10 - location.clients.count
    end
  end

  def self.least_clients
    @@all.min_by do |location|
      location.clients.count
    end
  end

  def trainers
    @trainers

  end

  def clients
    @clients
  end

  def clients=(client)
    @clients << client
  end
end
