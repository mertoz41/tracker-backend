class RemoveAgendaIdFromObjectives < ActiveRecord::Migration[6.0]
  def change
    remove_column :objectives, :agenda_id, :integer
  end
end
