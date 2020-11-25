class Doctor

    attr_accessor :name, :doctor, :appointment

    @@all = []

    def initialize(name)
        @name = name
        @appointment = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        app = Appointment.new(date, patient, doctor)
        app.doctor = self
    end

    def appointments
        Appointment.all.select {|app| app.doctor == self}
        @appointment << self
    end
end
