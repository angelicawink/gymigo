class GymsController < ApplicationController
  before_action :require_login
  layout 'application'

  def add_review
    @gym = Gym.find(params[:id])
    @gym_review = GymReview.new(gym_review_params)
    @gym_review.user_id = session[:user_id]
    @gym_review.gym_id = @gym.id
    @gym_review.save

    render :'gym_reviews/show'
  end

  def index
    @gyms = Gym.all
    @user = User.find(session[:user_id])
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def search
    @gyms = []
    Gym.all.each do |gym|
      if params[:q] == "all"
        @gyms = Gym.all
      elsif gym.zipcode == params[:q]
        @gyms << gym
      end
    end
    @user = User.find(session[:user_id])
    render :index
  end

  private
  def gym_review_params

    params.require(:gym_review).permit(:rating, :description, :user_id)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
