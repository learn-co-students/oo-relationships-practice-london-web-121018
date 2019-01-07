class Trainer
  attr_accessor :locations, :clients
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, locations, clients)
    @name = name
    @locations = locations
    @clients = clients
    self.class.all << self
  end

  def clients
    Client.all
  end

end
