class ChangeDescriptionDatatypeForWorkouts < ActiveRecord::Migration[5.2]
  def change
    change_column :workouts, :description, :text
  end
end
