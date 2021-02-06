class Booking < ApplicationRecord
    belongs_to :super_hero
    belongs_to :user
end
