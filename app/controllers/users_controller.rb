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
            UserBallpark.create(user_id: @user.id, ballpark_id: ballpark.id, overall_experience: 0, concession_rating: 0, beauty_rating: 0, overall_price_rating: 0, crowd_rating: 0, comments: "You have not rated this ballpark yet!!! Ratings start at 0", visited: false, wishlist: false)
        end
        render json: @user
    end 

    def login
        @user = User.find_by(name: params[:name])
        # @user_ballparks = @user.user_ballparks
        render json: @user
    end

    def edit_favorite
        @user = User.find_by(name: params[:name])
        @user.update(favorite_team: params[:favorite_team])
        render json: @user
    end


    private
    def user_params
        params.permit(:name, :favorite_team)
    end 

end
