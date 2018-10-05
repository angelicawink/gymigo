class Gym < ApplicationRecord
  has_many :workouts
  has_many :users, through: :workouts
  has_many :gym_reviews


  def average_rating
    rating_sum = 0
    rating_count = 0
    self.gym_reviews.each do |review|
      rating_sum += review.rating
      rating_count += 1
    end
    if rating_count == 0
      return false
    end
    rating_sum / rating_count
  end

end
