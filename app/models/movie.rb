class Movie
  @@all = []
  attr_accessor :actors, :characters, :name 

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.most_actors
    @@all.max_by do |movie|
      movie.actors.count
    end
  end

  def actors
    Actor.all.select do |actor|
      actor.movies.include?(self)
    end
  end

  def characters
    Character.all.select do |character|
      character.movies.include?(self)
    end
  end

  def self.all
    @@all
  end
end
