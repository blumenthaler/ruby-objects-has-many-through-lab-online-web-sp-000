class Doctor
  
  
  def initialize(name)
    @name = name
    @@all << self
  
  @@all = []
  
  def self.all
    @@all
  end
  
end