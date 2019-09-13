class Visit < ApplicationRecord
  belongs_to :guide
  has_many :bookings
  has_many :users, through: :bookings
end
