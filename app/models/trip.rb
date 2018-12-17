class Trip
  attr_accessor :guest, :listing
  @@all = []

  def self.all
    @@all
  end

  def initialize(guest, listing)
    @guest = guest
    @listing = listing
    self.class.all << self
  end

end
