class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #santize the params
    user_params = params.require(:user).permit(:first_name, :last_name, :city)
    # create a user with these params
    @user = User.new(user_params)
    # save the user
    if @user.save
      # redirect to users#show
      redirect_to new_user_review_path(@user)
    else
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
    #render :show
  end
end
