class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @review = @user.reviews.new
  end

  def create
    review_params = params.require(:review).permit(:rating)
    @user = User.find(params[:user_id])
    @review = @user.reviews.new(review_params)

    if @review.save
      redirect_to @user #, flash: "Landlord Review Posted Successfully"
    else
      redirect_to :back #, flash: "AHHHHHHHH!!!!!"
    end
  end
end
