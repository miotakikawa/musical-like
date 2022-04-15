class Admin::CategoriesController < ApplicationController
  def index
    @categories=Category.all
    @category=Category.new
  end

  def create
    @category=Category.new(category_params)
    @category.save
    redirect_to admin_genres_path
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
