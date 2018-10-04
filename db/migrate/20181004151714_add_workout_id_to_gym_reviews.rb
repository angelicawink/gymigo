class AddWorkoutIdToGymReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :gym_reviews, :workout_id, :integer
  end
end
