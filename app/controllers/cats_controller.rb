class CatsController < ApplicationController

  def index

  end

  def show
    @cat = Cat.find_by_id(params[:id])
    @video_prefix = "https://www.youtube.com/embed/"
    @first_video = Video.where(cat_id: @cat).first
    @videos = Video.where(cat_id: @cat)[1..4]
  end

  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.create!(cat_params)
    redirect_to cat
  end

  def edit

  end

  def update

  end


  private

  def cat_params
    params.require(:cat).permit(:title, :image, :short_description, :article)
  end

end
