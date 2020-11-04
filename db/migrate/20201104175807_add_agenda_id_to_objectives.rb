class AddAgendaIdToObjectives < ActiveRecord::Migration[6.0]
  def change
    add_column :objectives, :agenda_id, :integer
  end
end
