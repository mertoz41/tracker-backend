class ObjectivesController < ApplicationController
    def create
        # params to include project id
        # find agenda through project id
        # user that agenda id when creating each objective. 
        # agenda = Agenda.find_by(project_id: params[:project_id])
        nuObjec = Objective.create(description: params[:description], completed: false, project_id: params[:project_id])
        render json: {objective: nuObjec}
    end 
end
