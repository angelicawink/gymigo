class User < ApplicationRecord
  has_many :workouts_initiated, :foreign_key => "user_id", :class_name => "Workout"
  has_many :workouts_joined, :foreign_key => "amigo_id", :class_name => "Workout"
  has_many :gyms, through: :workouts
  has_many :gym_reviews
  has_many :amigo_reviews

  def all_workouts
    all = []
    all << self.workouts_joined
    all << workouts_initiated
    all.uniq
  end

end
