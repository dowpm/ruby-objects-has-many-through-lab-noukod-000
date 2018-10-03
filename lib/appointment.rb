class Appointment
  @@all = []
  attr_accessor :patient, :doctor, :date

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @date, @patient, @doctor = date, patient, doctor
    self.class.all << self
  end

end
