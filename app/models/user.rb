class User < ApplicationRecord
    has_many :user_ballparks
    has_many :ballparks, through: :user_ballparks
end
