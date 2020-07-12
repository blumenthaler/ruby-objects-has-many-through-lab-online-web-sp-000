class Genre
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      song.genre = self
    end
  end
  
  def artists
    # iterates over this genre's songs & collects the artist that owns each song
    songs.collect do |genres_song|
      
      
    end
  end
  
  
end