class Workout < ApplicationRecord
  belongs_to :user
  belongs_to :amigo, :class_name => "User"
  belongs_to :gym

  def self.requested
    Workout.all.select do |workout|
      workout.status == 'requested'
    end
  end

  def self.booked(user_id)
    byebug
    Workout.all.select do |workout|
      workout.status == 'booked' && (workout.user_id == user_id || workout.amigo_id == user_id)
    end
  end
end
