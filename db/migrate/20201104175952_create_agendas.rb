class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|
      t.integer :project_id

      t.timestamps
    end
  end
end
