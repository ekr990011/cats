class ArticlesController < ApplicationController
  before_action :js_css

  def index
    @articles = Article.all
    @articles = [] if @articles.length == 0
  end

  def show
    @article = Article.find_by_id(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create!(article_params)
    redirect_to article
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def update
    article = Article.find_by_id(params[:id])
    article.update(article_params)
    redirect_to article
  end


  private

  def article_params
    params.require(:article).permit(:title, :image, :article_body)
  end

  def js_css
    @js_css = {css: "article", js: "article"}
  end

end
