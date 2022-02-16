class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:id])
    @review.save
    redirect_to review_path(@review)
  end
end
