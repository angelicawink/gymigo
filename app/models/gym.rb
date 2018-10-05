class Gym < ApplicationRecord
  has_many :workouts
  has_many :users, through: :workouts
  has_many :gym_reviews
end
