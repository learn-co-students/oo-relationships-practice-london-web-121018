class Actor
  @@all = []
  attr_accessor :movies, :shows, :characters

  def initialize(name,movie,show,character)
    @name = name
    @movies = []
    @shows = []
    @characters = []
    @movies << movie
    @shows << show
    @characters << character
    @@all << self
  end

  def self.most_characters
    @@all.max_by do |actor|
      actor.characters.uniq.count
    end
  end

  def add_movie(name,character)
    @movies << name
    Character.new(character,self,name)
  end

  def self.all
    @@all
  end





end
