class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
      # creates a new song
    song = Song.new(name, genre)
      # song should know that it belongs to this artist
    song.artist = self
  end
  
  def songs
    Song.all.select do |song|
      song.artist = self
    end
  end
  
  
  
  
end