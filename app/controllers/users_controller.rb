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
        # UserBallpark.all.each do |ballpark| 
        #     ballpark
        # end
        render json: @user
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
