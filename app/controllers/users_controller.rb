class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def create
        @user = User.create(user_params)
        Ballpark.all.each do |ballpark| 
            UserBallpark.create(user_id: @user.id, ballpark_id: ballpark.id, overall_experience: 0, concession_rating: 0, beauty_rating: 0, overall_price_rating: 0, crowd_rating: 0, comments: nil, visited: false, wishlist: false)

        end
        render json: @user
    end 

    def login
        @user = User.find_by(params[:name])
        

    end

    # def delete
    #     @user = User.destroy
    #     @user.remove()
    #     render json: @user
    # end 

    private
    def user_params
        params.permit(:name, :favorite_team)
    end 

end
