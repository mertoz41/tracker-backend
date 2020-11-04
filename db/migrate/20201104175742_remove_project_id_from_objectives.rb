class RemoveProjectIdFromObjectives < ActiveRecord::Migration[6.0]
  def change
    remove_column :objectives, :project_id, :integer
  end
end
