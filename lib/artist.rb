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
  
  
  
  # iterates through all songs and finds the songs that belong to that artist. 
  #   Try using select to achieve this.
  
  # returns all songs associated with this Artist
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
      # iterates over artist's songs and collects genre of each song
 #   songs.select do |artists_song|
 #     artists_song.genre
  end
  
  
end