class Transmission < ActiveRecord::Base
  belongs_to :patient
  belongs_to :infected, class_name: 'Patient'

  validates_uniqueness_of :infected, :scope => :patient

  def self.history
    Transmission.all.order(date: :asc)
  end
end
