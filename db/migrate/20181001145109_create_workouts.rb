class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :start_time
      t.string :end_time
      t.string :description
      t.integer :gym_id
      t.integer :user_id
      t.integer :amigo_id
      t.string :status

      t.timestamps
    end
  end
end
