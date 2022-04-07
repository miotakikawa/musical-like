class Admin::MusicalsController < ApplicationController
  def index
   @musicals=Musical.all
  end

  def new
   @musical=Musical.new
  end

  def create
   @musical=Musical.new(item_params)
   if @musical.save
    redirect_to admin_musical_path(@musical.id)
   else
    render :new
   end
  end

  def show
   @musical = Musical.find(params[:id])
  end

  def edit
   @musical = Musical.find(params[:id])
  end

  def update
   @musical = Musicak.find(params[:id])
   @musical.update(musical_params)
   redirect_to admin_musicals_path
  end

  private
  def musical_params
    params.require(:musical).permit(:name, :image, :introduction)
  end
end
