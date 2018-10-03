class Doctor
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end

end
