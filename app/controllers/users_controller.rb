class UsersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:new, :create]
  layout 'application'

  def new
    @user = User.new
    byebug
  end

  def create

    @user = User.create(user_params)
    if @user.save
      byebug
      redirect_to profile_path(@user)
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
      redirect_to profile_path(@user)
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

  def reviews
    @user = User.find(params[:id])
    render :reviews
  end

  private
  def user_params
    params.require(:user).permit(:username, :city, :experience, :goals, :password, :password_confirmation)
  end

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end

end
