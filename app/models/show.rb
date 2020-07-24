class Show
  @@all = []
  attr_accessor :characters, :name 

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.on_the_big_screen
    newA = []
    @@all.each do |show|
      Movie.all.each do |movie|
        show.name == movie.name ? newA << show : nil
      end
    end
    newA.uniq
  end

  def characters
    Character.all.select do |character|
      character.shows.include?(self)
    end
  end

  def self.all
    @@all
  end
end
