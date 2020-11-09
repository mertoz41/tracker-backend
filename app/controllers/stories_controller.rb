class StoriesController < ApplicationController
    def create
        nu_story = Story.create(description: params[:description], project_id: params[:project_id], completed: false)
        render json: {new_story: nu_story}
    end 
end
