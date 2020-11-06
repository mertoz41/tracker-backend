class ProjectsController < ApplicationController
    def show
        project = Project.find(params[:id])
        render json: {objectives: project.objectives}
    end 
    
    def create
        
        project = Project.create(title: params[:projectName], duration: params[:duration], user_id: params[:user_id])

        if project.valid?
            render json: {project: project}, status: :accepted
        else
            render json: {message: "Project with this name already exists"}, status: :not_acceptable
        end 
    end 

    def update
        updated_project = Project.find(params[:id])
        updated_project.description = params[:description]
        updated_project.save
        render json: {project: updated_project}
        
    end 
end
