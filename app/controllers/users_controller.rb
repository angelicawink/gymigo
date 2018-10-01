class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    if !session[:user_id]
      #not logged in!
      @logged = false
    else
      @logged = true
    end

    if @user.id == session[:user_id]
      @self_page = true
    else
      @self_page = false
    end

  end

end
