class GymReviewsController < ApplicationController
  def new
    
    @gym_review = GymReview.new
  end
end
