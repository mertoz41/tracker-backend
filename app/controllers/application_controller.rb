class ApplicationController < ActionController::API

    def encode(payload)
        JWT.encode(payload, 'experiment', 'HS256')
    end

    def decode(token)
        JWT.decode(token, 'experiment', true, {algorithm: 'HS256'})[0]
    end 

    def get_projects(user_id)
        user = User.find(user_id)
        arr = []
        user.projects.each do |project|
            obj = {}
            obj = project.attributes
            obj["objectives"] = project.objectives
            arr.push(obj)
        end
        return arr
    end 
end
