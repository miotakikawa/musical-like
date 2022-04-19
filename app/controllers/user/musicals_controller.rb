class User::MusicalsController < ApplicationController
  def index
    # @musicals = Musical.all.page(params[:page]).per(6)
    musicals = Musical.
                left_joins(:reviews).
                distinct.
                sort_by do |musical|
                 hoges = musical.reviews
                if hoges.present?
                  hoges.map(&:evaluation).sum / hoges.size
                else
                  0
                end
              end.
              reverse

    @musicals = Kaminari.paginate_array(musicals).page(params[:page]).per(6)
    @categories = Category.all
    if params[:category_id]
     @category=Category.find(params[:category_id])
     @musicals=@category.musicals.page(params[:page]).per(6)
    else
     @musicals = Kaminari.paginate_array(musicals).page(params[:page]).per(6)
    end
    @musical = @musicals.total_count
  end

  def show
    @musical = Musical.find(params[:id])
    @reviews = @musical.reviews
  end
end
