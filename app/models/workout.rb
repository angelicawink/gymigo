class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :amigo, :class_name => "User"
  belongs_to :gym
end
