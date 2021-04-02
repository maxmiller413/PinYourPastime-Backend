class User < ApplicationRecord

    has_many :user_ballparks, dependent: :destroy
    has_many :ballparks, through: :user_ballparks 

    # validates :name, uniqueness: true

    # validates :name,
    # uniqueness: {
    #   object = @user
    #   data = { model: "User", attribute: "name", value: <name> }
    #   message: ->(object, data) do
    #     "Hey #{object.name}, #{data[:value]} is already taken."
    #   end
    # }
    

    def wish_lists
        wl = user_ballparks.select {|ubp| ubp.wishlist == true} 
        wl.map {|ubp| ubp.ballpark.name}
    end 

    def visit_lists
        wl = user_ballparks.select {|ubp| ubp.visited == true} 
        wl.map {|ubp| ubp.ballpark.name}
    end 

end
