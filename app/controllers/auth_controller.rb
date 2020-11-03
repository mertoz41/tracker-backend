class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {user: user}
        else
            render json: {message: "Invalid username or password"}
        end 


        
        
    end 
end
