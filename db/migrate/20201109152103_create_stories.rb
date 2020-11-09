class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :description
      t.integer :project_id
      t.boolean :completed

      t.timestamps
    end
  end
end
