class User::FavoritesController < ApplicationController
  def create
    review = Review.find(params[:review_id])
    favorite = current_user.favorites.new(review_id: review.id)
    favorite.save
    redirect_to user_musical_path(params[:id])
  end

  def destroy
    review = Review.find(params[:review_id])
    favorite = current_user.favorites.new(review_id: review.id)
    favorite.destroy
    redirect_to user_musical_path(params[:id])
  end
end
