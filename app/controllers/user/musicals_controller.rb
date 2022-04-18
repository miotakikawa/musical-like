class User::MusicalsController < ApplicationController
  def index
    @musicals = Musical.all.page(params[:page]).per(6)

    @categories = Category.all
    @musical = @musicals.count
  end

  def show
    @musical = Musical.find(params[:id])
    @review = @musical.reviews
  end
end
