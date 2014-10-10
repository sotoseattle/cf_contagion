module PatientsHelper
  def who_to_thank
    (tr = Transmission.where(infected: @patient).first) ? tr.patient.name : 'Patient Zero'
  end
end
