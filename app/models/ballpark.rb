class Ballpark < ApplicationRecord
    has_many :user_ballparks
    has_many :users, through: :user_ballparks
end
