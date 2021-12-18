class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completion
  def completion
    completed = object.stories.select {|stori| stori.completed}
    percentage = completed.size.to_f / object.stories.size * 100
    # byebug
    return percentage
  end
end
