class Client
  attr_reader :trainer, :locations
   @@all = []

  def initialize(name,trainer)
    @name = name
    @trainer = trainer
    @locations = []
    @@all << self
  end

  def self.all
    @@all
  end

  def assign_trainer(trainer)
    @trainer = trainer
    trainer.clients << self
    self
  end

  def locations
    Location.all.select do |location|
      location.clients.include?(self)
    end
  end
end
