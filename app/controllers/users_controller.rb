class UsersController < ApplicationController
  before_action :current_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user
 
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id:params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user=User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: 'User was successfully created.'
      else
        render :new   
      end
  end

  def update
    if @user.update(user_params)
     redirect_to @user, notice: 'User was successfully updated.'
    else
     render :edit 
    end
  end

  def destroy
    @user.destroy
      redirect_to users_url, notice: 'User was successfully destroyed.' 
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    return params.require(:user).permit(:first_name, :last_name, :user_name, :email, :bio, :gamertag)
  end
end
