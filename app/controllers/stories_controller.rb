class StoriesController < ApplicationController
    def create
        nu_story = Story.create(description: params[:description], project_id: params[:project_id], completed: false)
        render json: {new_story: nu_story.as_json(:include => :objectives)}
    end 

    def destroy
        story = Story.find(params[:id])
        story.destroy
        render json: {message: "story removed", deleted_story: story}
    end 
end
