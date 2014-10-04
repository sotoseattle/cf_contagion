class Transmission < ActiveRecord::Base
  belongs_to :patient
  belongs_to :infected, class_name: 'Patient'
end
