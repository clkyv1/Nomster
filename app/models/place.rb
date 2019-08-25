class Place < ApplicationRecord
  belongs_to :user
  gecoded_by :address
  after_validation :geocode
  
  validates:name, :address, :description, presence: true
end
