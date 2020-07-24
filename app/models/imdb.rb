
class Character

  attr_accessor
  attr_reader :name, :actor, :movie, :show

  @@all = []

  def initialize (name, actor, movie = nil, show = nil)
    @name = name
    @actor = actor
    @movie = movie
    @show = show
    @@all << self

  end

  def self.all
    @@all
  end

def most_appearances


end

end

class Movie

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize (name)
    @@all << self
    @name = name

  end

  def self.all
    @@all
  end

  def characters
    Character.all.select{|character| character.movie == self}
  end

  def actors
    characters.map {|character| character.actor}
  end



  ##Additional methods
  def self.most_actors
    most_actors = 0
    most_actors_movie = 0
    self.all.each {|movie|
      if movie.actors.count > most_actors
          most_actors = movie.actors.count
          most_actors_movie = movie
        end
         }
         most_actors_movie
      end



end

class Show

  attr_accessor
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def characters
    Character.all.select {|character| character.show == self}
  end

  ## Additional methods
  def on_the_big_screen
    show = ''
    Show.all.each {|show|
      Movie.all.each {|movie|
        binding.pry
        if movie.name.include?(show.name)
          show = show
        end
      }
    }
    show
  end


end

class Actor

  attr_accessor
  attr_reader

  @@all = []

  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def shows
    shows = []
    Character.all.each {|character|
      if character.actor == self
      shows << character.show
    end}
    shows.delete_if {|show| show == nil}
    shows
  end

  def movies
    movies = []
    Character.all.each {|character|
      if character.actor == self
      movies << character.movie
    end }
    movies.delete_if {|movie| movie == nil}
  end

  def all_media
    all_media = []
    Character.all.each {|character|
      if character.actor == self
        all_media << character.movie
        all_media << character.show
      end
    }
    all_media.delete_if {|media| media == nil}
    all_media
  end


  def self.most_characters
    character_count = 0
    character_max_count = ""
    Actor.all.each{ |actor|
      if actor.all_media.count > character_count
        binding.pry
        character_count = actor.all_media.count
        character_max_count = actor
      end
    }
    character_max_count
  end

end
