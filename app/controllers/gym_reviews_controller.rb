class GymReviewsController < ApplicationController



  def create
    
    @gym_review = GymReview.new(gym_review_params)
    @gym_review.user_id = session[:user_id]
    @gym_review.gym_id = params[:gym_review][:gym_id]
    @gym_review.save

    redirect_to gym_review_path(@gym_review)
  end

  def show
    @gym_review = GymReview.find(params[:id])
  end

  private
  def gym_review_params
    params.require(:gym_review).permit(:rating, :description, :user_id)
  end

end
