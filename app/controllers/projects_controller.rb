class ProjectsController < ApplicationController
    def create
        
        project = Project.create(title: params[:projectName], duration: params[:duration], user_id: params[:user_id])

        if project.valid?
            render json: {project: project}, status: :accepted
        else
            render json: {message: "Project with this name already exists"}, status: :not_acceptable
        end 
    end 
end
