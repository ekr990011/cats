class CatsController < ApplicationController
  before_action :js_css

  def index
    @cats = Cat.all
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
    @cat = Cat.find_by_id(params[:id])
  end

  def update
    cat = Cat.find_by_id(params[:id])
    cat.update(cat_params)
    redirect_to cat
  end


  private

  def cat_params
    params.require(:cat).permit(:title, :image, :short_description, :article)
  end

  def js_css
    @js_css = {css: "cat", js: "cat"}
  end

end
