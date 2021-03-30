class Ballpark < ApplicationRecord
    has_many :user_ballparks, dependent: :destroy
    has_many :users, through: :user_ballparks
end
