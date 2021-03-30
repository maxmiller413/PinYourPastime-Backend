class User < ApplicationRecord

    has_many :user_ballparks, dependent: :destroy
    has_many :ballparks, through: :user_ballparks 
    
end
