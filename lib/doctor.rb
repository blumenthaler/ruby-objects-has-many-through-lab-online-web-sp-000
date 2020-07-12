class Doctor
  
  
  def initialize(name)
    @name = name
  
  @@all = []
  
  def self.all
    @@all
  end
  
end