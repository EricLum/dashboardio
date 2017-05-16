class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.boolean :completed
      t.integer :pointscurrent
      t.integer :pointsgoal
      t.references :task
      t.timestamps
    end
  end
end
