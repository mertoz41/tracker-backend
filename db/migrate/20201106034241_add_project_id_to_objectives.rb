class AddProjectIdToObjectives < ActiveRecord::Migration[6.0]
  def change
    add_column :objectives, :project_id, :integer
  end
end
