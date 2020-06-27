class Patient
  
  attr_accessor :name, :all
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date.to_s, self, doctor)
  end
  
  
  def appointments
      Appointment.all.select do |appointment| 
      appointment.patient == self
    end
   end 
    
    def doctors 
      appointments.collect |appointment| 
      appointment.doctor 
    end
   end
end   
    
