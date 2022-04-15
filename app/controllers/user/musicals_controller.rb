class User::MusicalsController < ApplicationController
  def index
    @musicals = Musical.all
    @categories = Category.all
  end

  def show
    @musical = Musical.find(params[:id])
  end
end
