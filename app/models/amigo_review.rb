class AmigoReview < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  belongs_to :amigo, :class_name => "User"

  

end
