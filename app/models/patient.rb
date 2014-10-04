class Patient < ActiveRecord::Base
  has_many :transmissions
  has_many :patients, through: :transmissions
end
