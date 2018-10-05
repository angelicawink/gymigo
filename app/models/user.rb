class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true

  has_many :workouts_initiated, :foreign_key => "user_id", :class_name => "Workout"
  has_many :workouts_joined, :foreign_key => "amigo_id", :class_name => "Workout"
  has_many :gyms, through: :workouts
  has_many :gym_reviews
  has_many :amigo_reviews


  def all_workouts
    all = []
    all << self.workouts_joined
    all << self.workouts_initiated
    all.flatten
    all.uniq
  end

  def completed
    Workout.all.select do |workout|
      (workout.user_id == self.id || workout.amigo_id == self.id) && workout.status == "completed"
    end
  end

  def booked
    Workout.all.select do |workout|
      (workout.user_id == self.id || workout.amigo_id == self.id) && workout.status == "booked"
    end
  end

  def requested
    Workout.all.select do |workout|
      (workout.user_id == self.id || workout.amigo_id == self.id) && workout.status == "requested"
    end
  end

  def reviewed_gym_for_this_workout?(wko_id)
    self.gym_reviews.select do |review|
      review.workout_id = wko_id
    end
  end

  def reviewed_amigo_for_this_workout?(wko_id)
    self.amigo_reviews.select do |review|
      review.workout_id = wko_id
    end
  end

  def reviews
    AmigoReview.all.select do |review|
      review.amigo_id == self.id
    end
  end

end
