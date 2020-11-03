class UsersController < ApplicationController

    def create
        nu_user = User.create(username: params[:username], password: params[:password])
        
        if nu_user.valid?
            render json: { user: nu_user}, status: :accepted
        else
            render json: { message: "Username already exists." }, status: :not_acceptable
        end 

    end 
end
