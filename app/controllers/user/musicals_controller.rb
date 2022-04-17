class User::MusicalsController < ApplicationController
  def index
    @musicals = Musical.page(params[:page]).reverse_order
    @categories = Category.all
  end

  def show
    @musical = Musical.find(params[:id])
    @review = @musical.reviews
  end
end
