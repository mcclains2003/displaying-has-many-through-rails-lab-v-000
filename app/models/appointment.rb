class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def set_time_format
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  def patient_name
    patient.name
  end

  def doctor_name
    doctor.name
  end

end
