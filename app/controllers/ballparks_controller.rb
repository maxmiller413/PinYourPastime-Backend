class BallparksController < ApplicationController

    def index
        @ballparks = Ballpark.all 
        render json: @ballparks
    end 

    def show 
        @ballpark = Ballpark.find(params[:id])
        render json: @ballpark
    end 
    

end
