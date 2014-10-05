class Transmission < ActiveRecord::Base
  belongs_to :patient
  belongs_to :infected, class_name: 'Patient'

  validates :patient, :infected, :location, :date, presence: true
  validates_uniqueness_of :infected, :scope => :patient
  validate :repeat_transmission, :temporal_causality, on: :create

  def self.history
    Transmission.all.order(date: :asc)
  end

  private

  def repeat_transmission
    if Transmission.where(infected: infected).count > 0
      errors.add(:infected, 'infected already a carrier')
    end
  end

  def temporal_causality
    # [TODO] cannot transmit before I am a carrier
  end
end
