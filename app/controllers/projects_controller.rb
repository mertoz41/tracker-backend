class ProjectsController < ApplicationController
    def show
        project = Project.find(params[:id])
        @stories = project.stories
        render json: @stories, each_serializer: StorySerializer
    end 
    
    def create
        
        project = Project.create(title: params[:projectName], description: params[:description], user_id: params[:user_id])
        # include stories and objectives

        if project.valid?
            render json: {project: project.as_json(:include => {:stories => {:include => :objectives}})}, status: :accepted
        else
            render json: {message: "Project with this name already exists"}, status: :not_acceptable
        end 
    end 
    
    def destroy
        project = Project.find(params[:id])
        project.destroy
        render json: {message: "project deleted", deleted_project: project}
    end 

    def update
        updated_project = Project.find(params[:id])
    
        updated_project.description = params[:description]
        updated_project.save
        # include stories and objectives
        render json: {project: updated_project.as_json(:include => {:stories => {:include => :objectives}})}
    end 

    def addstories
        project = Project.find(params[:id])
        arr = []
        params[:stories].each do |story|
            if story.length > 0
                nu_story = Story.create(description: story, project_id: params[:id], completed: false)
            end
        end 

        render json: {project: project.as_json(:include => {:stories => {:include => :objectives}})}

    end 
end
