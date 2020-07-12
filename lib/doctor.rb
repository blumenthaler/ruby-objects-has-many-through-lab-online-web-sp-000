class Doctor
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, #doctor aka self)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end
  
  
end