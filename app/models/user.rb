class User < ApplicationRecord

    has_many :user_ballparks, dependent: :destroy
    has_many :ballparks, through: :user_ballparks 
    

    def wish_lists
        wl = user_ballparks.select {|ubp| ubp.wishlist == true} 
        wl.map {|ubp| ubp.ballpark.name}
    end 

    def visit_lists
        wl = user_ballparks.select {|ubp| ubp.visited == true} 
        wl.map {|ubp| ubp.ballpark.name}
    end 

end
