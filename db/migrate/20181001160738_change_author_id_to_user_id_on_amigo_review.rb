class ChangeAuthorIdToUserIdOnAmigoReview < ActiveRecord::Migration[5.2]
  def change
    rename_column :amigo_reviews, :author_id, :user_id
  end
end
