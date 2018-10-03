class SessionsController < ApplicationController
  layout false
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:login_attempt][:username])
    if @user && @user.authenticate(params[:login_attempt][:password])
        session[:user_id] = @user.id
        redirect_to profile_path(@user)
    else
        # Create an error message.
        flash[:notice] = "Wrong username or password."
        render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end


  private
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
