class AddStoryIdToObjectives < ActiveRecord::Migration[6.0]
  def change
    add_column :objectives, :story_id, :integer
  end
end
