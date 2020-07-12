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
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end
  
  def patients
    appointments.collect do |doc_appt|
      doc_appt.patient
    end
  end
end