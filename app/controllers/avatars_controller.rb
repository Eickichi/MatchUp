class AvatarsController < ApplicationController
  def create
    @user = User.find(params[:profile_id])
    @user.avatar.attach(params[:avatar])
    redirect_to(profile_path(@user))
  end
end
