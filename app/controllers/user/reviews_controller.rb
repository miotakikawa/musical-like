class User::ReviewsController < ApplicationController
  def new
    @review= Review.new
    @musicals = Musical.all
  end

  def create
    @review = Review.new(review_params)
    @review.user_id=current_user.id
    @review.evaluation = params['review_rate']['evaluation']
    if @review.save
      redirect_to  user_review_path(@review.id), notice: "You have created book successfully."
    else
      render :new
    end
  end
　
　def index
　  @reviews = Review.all
　end
　
  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
    if @review.user == current_user
      render "edit"
    else
      redirect_to user_review_path(@review.id)
    end
  end

  def update
    @review = Review.find(params[:id])
    if@review.update(review_params)
     redirect_to user_review_path(@review.id), notice:"You have created book successfully."
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to books_path
  end

  private

  def review_params
    params.require(:review).permit(:comment, :evaluation, :musical_id, :category)
  end
end
