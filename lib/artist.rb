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
    Song.new(name, self, genre)
        # song should know that it belongs to this artist
  end
  
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