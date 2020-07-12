class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist = nil, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
end