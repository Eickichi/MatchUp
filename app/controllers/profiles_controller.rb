require "time"

class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @now = Time.now.utc.to_date
    puts @user.user_name
  end
end
