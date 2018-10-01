class SessionsController < ApplicationController
  def new
  end

  def create
  

    @user = User.find_by(username: params[:login_attempt][:username])
    if @user && @user.password == params[:login_attempt][:password]
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    else
        # Create an error message.
        flash[:notice] = "Wrong username or password."
        render :new
    end

    def destroy
      session[:user_id] = nil
      redirect_to login_path
    end

  end


end
