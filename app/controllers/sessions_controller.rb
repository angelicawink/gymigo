class SessionsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]

  def new
    render :layout => false
  end

  def create
    render :layout => false
    @user = User.find_by(username: params[:login_attempt][:username])
    if @user && @user.authenticate(params[:login_attempt][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
        # Create an error message.
        flash[:notice] = "Wrong username or password."
        render :new
    end

    def destroy
      render :layout => false
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
