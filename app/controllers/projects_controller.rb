class ProjectsController < ApplicationController
    def create
        
        project = Project.create(title: params[:projectName], duration: params[:duration], user_id: params[:user_id])
        render json: {project: project}
    end 
end
