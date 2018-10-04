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
    Workout.all.select do |workout|
      workout.status == 'booked' && (workout.user_id == user_id || workout.amigo_id == user_id)
    end
  end

  def self.completed(user_id)
    Workout.all.select do |workout|
      workout.status == "completed" && (workout.user_id == user_id || workout.amigo_id == user_id)
    end
  end

  def self.awaiting(user_id)
    Workout.all.select do |workout|
      workout.status = "requested" && (workout.user_id == user_id)
    end
  end
end
