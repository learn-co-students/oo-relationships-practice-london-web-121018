class Trip
  attr_accessor :city
  attr_reader :listing, :guest
  @@all = []

  def initialize(guest,listing,city)
    @city = city
    @guest = guest
    @listing = listing
    @@all << self
  end

  def self.all
    @@all
  end

  def listing
    @listing
  end

  def guest
    @guest
  end
end
