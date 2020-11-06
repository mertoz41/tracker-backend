class AuthController < ApplicationController
    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode(payload)
            projects = get_projects(user.id)

            render json: {user: user.as_json(:except => [:password_digest]), token: token, projects: projects}
        else
            render json: {message: "Invalid username or password"}
        end 
    end 

    def check
        user = User.find(decode(request.headers["Authentication"])["user_id"])
        projects = get_projects(user.id)
        render json: {user: user.as_json(:except => [:password_digest]), projects: projects}
    end 
end
