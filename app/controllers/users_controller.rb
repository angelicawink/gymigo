class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def profile
    @user = User.find(params[:id])
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

  private
  def user_params
    params.require(:user).permit(:username, :city, :experience, :goals, :password, :password_confirmation)
  end

end
