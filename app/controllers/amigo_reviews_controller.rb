class AmigoReviewsController < ApplicationController

  def create
    @amigo_review = AmigoReview.new(amigo_review_params)
    @amigo_review.user_id = session[:user_id]
    @amigo_review.save

    redirect_to amigo_review_path(@amigo_review)
  end

  def show
    @amigo_review = AmigoReview.find(params[:id])
  end




  private

  def amigo_review_params
    params.require(:amigo_review).permit(:amigo_id, :user_id, :rating, :description, :workout_id)
  end
end
