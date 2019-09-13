class User < ApplicationRecord
    has_many :bookings
    has_many :visits, through: :bookings
end
