class ApplicationController < ActionController::Base
  def welcome
  end

  helper_method :current_user
  def current_user
    if @current_user
        @current_user
    elsif session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
end
