class AddWorkoutIdToAmigoReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :amigo_reviews, :workout_id, :integer
  end
end
