class ObjectivesController < ApplicationController
    def create
        # params to include project id
        # find agenda through project id
        # user that agenda id when creating each objective. 
        # agenda = Agenda.find_by(project_id: params[:project_id])
        nuObjec = Objective.create(description: params[:description], completed: false, story_id: params[:story_id])
        render json: {objective: nuObjec}
    end 

    def destroy 
        objective = Objective.find(params[:id])
        objective.destroy
        render json: {message: "objective removed", deleted_objective: objective}
    end 

    def update
        objective = Objective.find(params[:id])
        objective.completed = params[:completed]
        objective.save
        render json: {updated_objective: objective}
    end 
end
