class ApplicationController < ActionController::API

    def encode(payload)
        JWT.encode(payload, 'experiment', 'HS256')
    end

    def decode(token)
        JWT.decode(token, 'experiment', true, {algorithm: 'HS256'})[0]
    end 

    def get_projects(user_id)
        # project stories and objectives to be rearranged 
        # all stories for each project
        # all objectives for each story
        user = User.find(user_id)
        arr = []
        user.projects.each do |project|
            stories_with_objectives = []
            obj = {}
            obj = project.attributes
            # add stories for each project
            # add objectives for each story
            project.stories.each do |story|
                story_obj = {}
                story_obj = story.attributes
                story_obj["objectives"] = story.objectives
                stories_with_objectives.push(story_obj)
            end
            obj["stories"] = stories_with_objectives
            arr.push(obj)
        end
        return arr
    end 
end
