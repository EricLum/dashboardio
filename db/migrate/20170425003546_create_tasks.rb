class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :taskname
      t.boolean :completed
      t.text :description
      t.integer :points
      t.references :goal
      t.timestamps
    end
  end
end
