class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def patient_count
    appointments.count
  end

end
