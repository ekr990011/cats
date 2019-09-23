class CatsController < ApplicationController
  before_action :js_css
  before_action :index_js_css, only: [:index]
  before_action :admin, only: [:edit, :update, :new, :create]

  def index
    @cats = Cat.paginate(page: params[:cat_page], per_page: 4 ).order('created_at ASC')
    @articles = Article.paginate(page: params[:page], per_page: 3 ).order('created_at ASC')
    @homepage = true
  end

  def show
    @cat = Cat.find_by_id(params[:id])
    @video_prefix = "https://www.youtube.com/embed/"
    @first_video = Video.where(cat_id: @cat).first
    @videos = Video.where(cat_id: @cat)[1..4]
    @cat_comments = CatComment.paginate(page: params[:page], per_page: 5 ).order('created_at DESC')
    @cat_comment = CatComment.new
    @twitterTitle = @cat.title
    @twitterURL = "http://www.felinesfancy.com/cats/#{@cat.id}"
    @twitterImage = 'media/images/cats/' + @cat.image
    @twitterDescription = @cat.short_description
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

  def index_js_css
    @index = {css: "article", js: "article"}
  end

  def admin
    unless current_user && current_user.admin?
      flash[:danger] = "How dare you use your guile tactics on us!"
      redirect_to '/cats'
    end
  end

end
