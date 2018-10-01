class CreateGymReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :gym_reviews do |t|
      t.integer :user_id
      t.integer :gym_id
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
