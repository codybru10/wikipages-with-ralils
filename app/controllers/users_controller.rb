class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
    if @user.save
      flash[:notice]="welcome to the site"
      redirect_to "/"
    else
      flash[:alert]="THere was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

  def create

  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
