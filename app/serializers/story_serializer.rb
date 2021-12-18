class StorySerializer < ActiveModel::Serializer
    attributes :id, :description, :project_id, :completed
    has_many :objectives
  end
  