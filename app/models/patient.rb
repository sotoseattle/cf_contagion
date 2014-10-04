class Patient < ActiveRecord::Base
  has_many :contacts
  has_many :patients, through: :contacts
end
