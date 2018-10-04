class GymReview < ApplicationRecord
  belongs_to :user
  belongs_to :gym
  belongs_to :workout
end
