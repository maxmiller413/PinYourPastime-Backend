class UserBallparksController < ApplicationController

    def index
        @user_ballparks = UserBallpark.all 
        render json: @user_ballparks
    end

    def update 
        @user_ballpark = UserBallpark.find_by(id: params[:id])
        @user_ballpark.update(overall_experience: params[:overall_experience],
            concession_rating: params[:concession_rating],
            beauty_rating: params[:beauty_rating],
            overall_price_rating: params[:overall_price_rating],
            crowd_rating: params[:crowd_rating],
            comments: params[:comments],
            visited: params[:visited],
            wishlist: params[:wishlist])
            render json: @user_ballpark
        end 



        # private

        # def user_ballpark_params

        # end 


end
