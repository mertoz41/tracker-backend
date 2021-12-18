class AddProgressToObjectives < ActiveRecord::Migration[6.0]
  def change
    add_column :objectives, :in_progress, :boolean
  end
end
