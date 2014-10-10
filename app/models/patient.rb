class Patient < ActiveRecord::Base
  has_many :transmissions
  has_many :infecteds, through: :transmissions
end
