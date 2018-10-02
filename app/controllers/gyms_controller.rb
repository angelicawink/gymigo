class GymsController < ApplicationController
  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end

  def search
    @gyms = []
    Gym.all.each do |gym|
      if gym.zipcode == params[:q]
        @gyms << gym
      end
    end
    @gyms
    render :index
  end
end
