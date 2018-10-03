class GymsController < ApplicationController
  before_action :require_login

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
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
