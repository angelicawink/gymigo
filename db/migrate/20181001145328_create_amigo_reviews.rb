class CreateAmigoReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :amigo_reviews do |t|
      t.integer :author_id
      t.integer :amigo_id
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
