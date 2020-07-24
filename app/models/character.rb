class Character
  attr_accessor :actor, :shows, :movies
  @@all = []
  @shows = []

  def initialize(name,movie)
    @name = name
    @movies = []
    @movies << movie
    @@all << self
  end

  def self.most_appearances
    @all.max_by do |character|
      character.shows.count + character.movies.count
    end
  end

  def add_movie(movie)
    @movies << movie
  end

  def movies
    @movies
  end

  def shows
    Show.all.select do |show|
      show.characters.include?(self)
    end
  end


end
